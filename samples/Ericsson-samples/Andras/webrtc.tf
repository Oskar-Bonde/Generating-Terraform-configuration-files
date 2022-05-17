#resource "openstack_networking_floatingip_v2" "webrtc-fip" {
#  pool = "ECN"
#}

#resource "openstack_compute_floatingip_associate_v2" "webrtc-fip" {
#  floating_ip = "${openstack_networking_floatingip_v2.webrtc-fip.address}"
#  instance_id = "${openstack_compute_instance_v2.webrtc-instance.id}"
#  depends_on = [openstack_compute_instance_v2.webrtc-instance, openstack_networking_floatingip_v2.webrtc-fip]
#}

#output "webrtc_instance_floatip" {
#  value = openstack_compute_floatingip_associate_v2.webrtc-fip.floating_ip
#  depends_on = [openstack_compute_floatingip_associate_v2.webrtc-fip]
#}

# Create the instance
resource "openstack_compute_instance_v2" "webrtc-instance" {
    name = "webrtc-instance"
	image_id = "6479d7ef-dafe-4d21-95d9-ca049f21d5b6"
	#flavor_id = "6435f91c-ceec-4c25-a243-f37947678a62"
	flavor_name = "c4m8"
	security_groups = ["${openstack_networking_secgroup_v2.secgroup_1.name}"]
	key_pair = "nw-emulator-keypair"
	
    network {
		name = "nw-emulator-network"
		fixed_ip_v4 = "10.0.0.86"
	}

	depends_on = [openstack_networking_network_v2.nw-emulator-network, openstack_compute_keypair_v2.nw-emulator-keypair,
	openstack_networking_subnet_v2.nw-emulator-subnet, openstack_networking_secgroup_v2.secgroup_1]

}