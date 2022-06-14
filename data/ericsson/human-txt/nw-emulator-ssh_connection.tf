resource "null_resource" "nw-emulator-provision" {
  depends_on = [openstack_compute_floatingip_associate_v2.nw-emulator-fip, openstack_compute_keypair_v2.nw-emulator-keypair]
    provisioner "file" {
           source  = "intent-manager.yml"
           destination = "/home/ubuntu/intent-manager.yml"
    }
    provisioner "file" {
           source  = "nw-configure.yml"
           destination = "/home/ubuntu/nw-configure.yml"
    }
	provisioner "file" {
           source  = "nw-emulator-key.pem"
           destination = "/home/ubuntu/nw-emulator-key.pem"
    }   
    provisioner "file" {
           source  = "install-ansible.sh"
           destination = "/home/ubuntu/install-ansible.sh"
    }
    provisioner "file" {
           source  = "hosts"
           destination = "/home/ubuntu/hosts"
    }
    provisioner "file" {
           source  = "k8-master.yml"
           destination = "/home/ubuntu/k8-master.yml"
    }
    provisioner "file" {
           source  = "webrtc-configure.yml"
           destination = "/home/ubuntu/webrtc-configure.yml"
    }
    provisioner "file" {
           source  = "k8-updater.yml"
           destination = "/home/ubuntu/k8-updater.yml"
    }
    provisioner "file" {
           source  = "ntp.conf"
           destination = "/home/ubuntu/ntp.conf"
    }      	
	connection {
        type = "ssh"
        host = "${openstack_networking_floatingip_v2.nw-emulator-fip.address}"
        user = "ubuntu"
        private_key = "${openstack_compute_keypair_v2.nw-emulator-keypair.private_key}"
        port = 22
        timeout = "5m"
    }
  
    provisioner "remote-exec" {
     inline = [
     "echo Installing Ansible",
     "sudo apt-get update -y",
     "sudo apt-get install software-properties-common -y",
     "sudo add-apt-repository --yes --update ppa:ansible/ansible -y",
     "sudo apt-get install ansible -y",
     "sudo apt-get install ntp -y",
	 "sudo apt-get install python3-pip -y",
	 "sudo apt-get install python3-docker -y",
	 "sudo apt-get install dos2unix -y",
	 "sudo pip3 install pexpect",
	 "dos2unix /home/ubuntu/install-ansible.sh",
	 "chmod 600 /home/ubuntu/nw-emulator-key.pem",
	 "ssh -o StrictHostKeyChecking=no ubuntu@10.0.0.86",
	 "ssh -o StrictHostKeyChecking=no ubuntu@10.0.0.6",
	 "ssh -o StrictHostKeyChecking=no ubuntu@10.0.0.148",
	 "ssh -o StrictHostKeyChecking=no ubuntu@10.0.0.66",
        "ssh -o StrictHostKeyChecking=no ubuntu@10.0.0.7",
        "scp  -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -i /home/ubuntu/nw-emulator-key.pem /home/ubuntu/ntp.conf ubuntu@10.0.0.7:/home/ubuntu/",
        "scp  -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -i /home/ubuntu/nw-emulator-key.pem /home/ubuntu/ntp.conf ubuntu@10.0.0.86:/home/ubuntu/",
         "scp  -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -i /home/ubuntu/nw-emulator-key.pem /home/ubuntu/ntp.conf ubuntu@10.0.0.6:/home/ubuntu/",
	 "scp  -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -i /home/ubuntu/nw-emulator-key.pem /home/ubuntu/ntp.conf ubuntu@10.0.0.148:/home/ubuntu/",
	 "scp  -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -i /home/ubuntu/nw-emulator-key.pem /home/ubuntu/ntp.conf ubuntu@10.0.0.66:/home/ubuntu/",
	 "scp  -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -i /home/ubuntu/nw-emulator-key.pem /home/ubuntu/k8-updater.yml ubuntu@10.0.0.6:/home/ubuntu/",
         "scp  -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -i /home/ubuntu/nw-emulator-key.pem /home/ubuntu/intent-manager.yml ubuntu@10.0.0.7:/home/ubuntu/",
	 "scp  -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -i /home/ubuntu/nw-emulator-key.pem /home/ubuntu/k8-updater.yml ubuntu@10.0.0.148:/home/ubuntu/",
	 "scp  -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -i /home/ubuntu/nw-emulator-key.pem /home/ubuntu/k8-updater.yml ubuntu@10.0.0.66:/home/ubuntu/",
	 "scp  -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -i /home/ubuntu/nw-emulator-key.pem /home/ubuntu/k8-master.yml ubuntu@10.0.0.6:/home/ubuntu/",
	 "scp  -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -i /home/ubuntu/nw-emulator-key.pem /home/ubuntu/k8-master.yml ubuntu@10.0.0.148:/home/ubuntu/",
	 "scp  -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -i /home/ubuntu/nw-emulator-key.pem /home/ubuntu/k8-master.yml ubuntu@10.0.0.66:/home/ubuntu/",
	 "scp  -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -i /home/ubuntu/nw-emulator-key.pem /home/ubuntu/webrtc-configure.yml ubuntu@10.0.0.86:/home/ubuntu/",
	 "scp  -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -i /home/ubuntu/nw-emulator-key.pem /home/ubuntu/install-ansible.sh ubuntu@10.0.0.6:/home/ubuntu/",
        "scp  -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -i /home/ubuntu/nw-emulator-key.pem /home/ubuntu/install-ansible.sh ubuntu@10.0.0.7:/home/ubuntu/",
	 "scp  -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -i /home/ubuntu/nw-emulator-key.pem /home/ubuntu/install-ansible.sh ubuntu@10.0.0.148:/home/ubuntu/",
	 "scp  -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -i /home/ubuntu/nw-emulator-key.pem /home/ubuntu/install-ansible.sh ubuntu@10.0.0.66:/home/ubuntu/",
	 "scp  -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -i /home/ubuntu/nw-emulator-key.pem /home/ubuntu/install-ansible.sh ubuntu@10.0.0.86:/home/ubuntu/",
	 "scp  -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -i /home/ubuntu/nw-emulator-key.pem /home/ubuntu/hosts ubuntu@10.0.0.6:/home/ubuntu/",
	 "scp  -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -i /home/ubuntu/nw-emulator-key.pem /home/ubuntu/hosts ubuntu@10.0.0.148:/home/ubuntu/",
	 "scp  -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -i /home/ubuntu/nw-emulator-key.pem /home/ubuntu/hosts ubuntu@10.0.0.66:/home/ubuntu/",
	 "scp  -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -i /home/ubuntu/nw-emulator-key.pem /home/ubuntu/nw-emulator-key.pem ubuntu@10.0.0.6:/home/ubuntu/",
        "scp  -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -i /home/ubuntu/nw-emulator-key.pem /home/ubuntu/nw-emulator-key.pem ubuntu@10.0.0.7:/home/ubuntu/",
	 "scp  -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -i /home/ubuntu/nw-emulator-key.pem /home/ubuntu/nw-emulator-key.pem ubuntu@10.0.0.148:/home/ubuntu/",
	 "scp  -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -i /home/ubuntu/nw-emulator-key.pem /home/ubuntu/nw-emulator-key.pem ubuntu@10.0.0.66:/home/ubuntu/",
	 "scp  -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -i /home/ubuntu/nw-emulator-key.pem /home/ubuntu/nw-emulator-key.pem ubuntu@10.0.0.86:/home/ubuntu/",
	 "ssh -i /home/ubuntu/nw-emulator-key.pem ubuntu@10.0.0.86 'bash -s' < /home/ubuntu/install-ansible.sh",
	 "ssh -i /home/ubuntu/nw-emulator-key.pem ubuntu@10.0.0.6 'bash -s' < /home/ubuntu/install-ansible.sh",
	 "ssh -i /home/ubuntu/nw-emulator-key.pem ubuntu@10.0.0.148 'bash -s' < /home/ubuntu/install-ansible.sh",
	 "ssh -i /home/ubuntu/nw-emulator-key.pem ubuntu@10.0.0.66 'bash -s' < /home/ubuntu/install-ansible.sh",
        "ssh -i /home/ubuntu/nw-emulator-key.pem ubuntu@10.0.0.7 'bash -s' < /home/ubuntu/install-ansible.sh",
	 "echo Ansible Installation Done!",
     "echo Done!"
     ]
    connection {
        type = "ssh"
        host = "${openstack_networking_floatingip_v2.nw-emulator-fip.address}"
        user = "ubuntu"
        private_key = "${openstack_compute_keypair_v2.nw-emulator-keypair.private_key}"
        port = 22
        timeout = "5m"
      }
  }
}