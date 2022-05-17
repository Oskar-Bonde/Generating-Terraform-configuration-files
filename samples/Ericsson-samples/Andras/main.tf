# Define required providers
terraform {
required_version = ">= 0.14.0"
  required_providers {
    openstack = {
      source  = "terraform-provider-openstack/openstack"
      version = "~> 1.35.0"
    }
  }
}

# Configure the OpenStack Provider
provider "openstack" {
  region      = "RegionOne"
}

resource "openstack_networking_floatingip_v2" "nw-emulator-fip" {
  pool = "ECN"

}

resource "openstack_compute_keypair_v2" "nw-emulator-keypair" {
  name = "nw-emulator-keypair"
}

resource "openstack_compute_floatingip_associate_v2" "nw-emulator-fip" {
  floating_ip = "${openstack_networking_floatingip_v2.nw-emulator-fip.address}"
  instance_id = "${openstack_compute_instance_v2.nw-emulator-instance.id}"
  depends_on = [openstack_compute_instance_v2.nw-emulator-instance, openstack_networking_floatingip_v2.nw-emulator-fip]
}

resource "openstack_networking_network_v2" "nw-emulator-network" {
  name           = "nw-emulator-network"
  admin_state_up = "true"
}

resource "openstack_networking_subnet_v2" "nw-emulator-subnet" {
  name       = "nw-emulator-subnet"
  network_id = "${openstack_networking_network_v2.nw-emulator-network.id}"
  cidr       = "10.0.0.0/24"
  ip_version = 4
  allocation_pool {
     start = "10.0.0.8"
	 end   = "10.0.0.50"
  }
  depends_on = [openstack_networking_network_v2.nw-emulator-network]
}

resource "openstack_networking_router_v2" "nw-emulator-router" {
  name           = "nw-emulator-router"
  admin_state_up = "true"
  external_network_id = "d6cc381d-38cb-418f-bea1-082a0d5169ee"
}

resource "openstack_networking_router_interface_v2" "nw-emulator-route-interface" {
  router_id = "${openstack_networking_router_v2.nw-emulator-router.id}"
  subnet_id = "${openstack_networking_subnet_v2.nw-emulator-subnet.id}"
  depends_on = [openstack_networking_subnet_v2.nw-emulator-subnet,openstack_networking_router_v2.nw-emulator-router]
}

resource "local_file" "private_key" {
  content = openstack_compute_keypair_v2.nw-emulator-keypair.private_key
  filename = "nw-emulator-key.pem"
  file_permission = "0700"
  depends_on = [openstack_compute_keypair_v2.nw-emulator-keypair]
}

output "instance_floatip" {
  value = openstack_compute_floatingip_associate_v2.nw-emulator-fip.floating_ip
  depends_on = [openstack_compute_floatingip_associate_v2.nw-emulator-fip]
}


resource "openstack_networking_port_v2" "port_1" {
  name           = "nw-emulator-port"
  network_id     = "${openstack_networking_network_v2.nw-emulator-network.id}"
  admin_state_up = "true"
  #security_group_ids = ["${openstack_compute_secgroup_v2.nw-emulator-rules.id}"]
  security_group_ids = ["${openstack_networking_secgroup_v2.secgroup_1.id}"]
  fixed_ip {
    ip_address =  "10.0.0.87"
    subnet_id = "${openstack_networking_subnet_v2.nw-emulator-subnet.id}"
  }
  allowed_address_pairs {
    ip_address = "10.1.1.0/24"
  }
  device_owner   = "compute:nova"
 
  depends_on = [openstack_networking_network_v2.nw-emulator-network,
  openstack_networking_subnet_v2.nw-emulator-subnet,
  openstack_networking_secgroup_v2.secgroup_1]
}

# Create the instance
resource "openstack_compute_instance_v2" "nw-emulator-instance" {
    name = "nw-emulator-instance"
	#image_id = "6479d7ef-dafe-4d21-95d9-ca049f21d5b6"
	flavor_name = "c4m8"
	security_groups = ["${openstack_networking_secgroup_v2.secgroup_1.name}"]
	#flavor_id = "6435f91c-ceec-4c25-a243-f37947678a62"
	key_pair = "nw-emulator-keypair"
	
	block_device {
		uuid                  = "${openstack_blockstorage_volume_v2.nw-emulator-volume.id}"
		source_type           = "volume"
		boot_index            = 0
		destination_type      = "volume"
		delete_on_termination = true
    }
	
    network {
		name = "nw-emulator-network"
        port = "${openstack_networking_port_v2.port_1.id}"
	}

	depends_on = [openstack_networking_network_v2.nw-emulator-network, openstack_compute_keypair_v2.nw-emulator-keypair,
	openstack_networking_subnet_v2.nw-emulator-subnet, openstack_networking_port_v2.port_1,
	openstack_blockstorage_volume_v2.nw-emulator-volume, openstack_networking_secgroup_v2.secgroup_1]

}

resource "openstack_networking_secgroup_v2" "secgroup_1" {
  name        = "nw-emulator-security-group"
  description = "nw-emulator security group"
}

resource "openstack_networking_secgroup_rule_v2" "ssh" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = 22
  port_range_max    = 22
  remote_ip_prefix  = "0.0.0.0/0"
  security_group_id = "${openstack_networking_secgroup_v2.secgroup_1.id}"
  #remote_group_id   = "${openstack_networking_secgroup_v2.secgroup_1.id}"
}

resource "openstack_networking_secgroup_rule_v2" "any" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = null
  security_group_id = "${openstack_networking_secgroup_v2.secgroup_1.id}"
  remote_group_id   = "${openstack_networking_secgroup_v2.secgroup_1.id}"
}

resource "openstack_blockstorage_volume_v2" "nw-emulator-volume" {
  name     = "nw-emulator-volume"
  size     = 50
  image_id = "6479d7ef-dafe-4d21-95d9-ca049f21d5b6"
}

# other option
#resource "openstack_compute_volume_attach_v2" "va_1" {
#  instance_id = "${openstack_compute_instance_v2.nw-emulator-instance.id}"
#  volume_id   = "${openstack_blockstorage_volume_v2.nw-emulator-volume.id}"
#  depends_on = [openstack_blockstorage_volume_v2.nw-emulator-volume, 
#  openstack_compute_instance_v2.nw-emulator-instance]
#}