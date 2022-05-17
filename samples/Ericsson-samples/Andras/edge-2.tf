# Create a web server

resource "openstack_compute_instance_v2" "k8edge-2-instance" {
    name = "k8edge-2-instance"
	image_id = "6479d7ef-dafe-4d21-95d9-ca049f21d5b6"
	#image_id = "66605c0c-4457-4d00-8cd9-46823ed58224"
	#flavor_id = "6435f91c-ceec-4c25-a243-f37947678a62"
    flavor_name = "c2m8"
	security_groups = ["${openstack_networking_secgroup_v2.secgroup_1.name}"]
	key_pair = "nw-emulator-keypair"
      network {
		name = "nw-emulator-network"
		fixed_ip_v4 = "10.0.0.148"
	}

	depends_on = [openstack_networking_network_v2.nw-emulator-network, openstack_compute_keypair_v2.nw-emulator-keypair,
	openstack_networking_subnet_v2.nw-emulator-subnet, openstack_networking_secgroup_v2.secgroup_1]
}
