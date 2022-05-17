terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
provider "google" {
}

# a compute instance resource
resource "google_compute_instance" "name_0" {
  name = "my-compute-instance-%{random_suffix}"
  machine_type = "f1-micro"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = "default"    
    access_config {
    }
  }
}

# an output blockvariable "instance_name" {
#    description = "Name of the instance"
#    value = "${var.instance_name}"
# }

# output variable "instance_ip" {
#    description = "IP address of the instance"
#    value = "${google_compute_address.vm_instance.address}"
# }

# output variable "instance_tags" {
#    description = "Instance tags"
#    value = "${var.instance_tags}"
# }

# output variable "instance_machine_type" {
#    description = "Machine type of the instance"
#    value = "${var.instance_machine_type}"
# }

# output variable "instance_tags" {
#    description = "Instance tags"
#    value = "${var.instance_tags}"
# }

# output variable "instance_machine_tags" {
#    description = "Instance tags"
#    value = "${var.instance_tags}"
# }

# output variable "instance_machine_tags" {
#    description = "Instance tags"
#    value = "${var.instance_tags}"
# }

# output variable "instance_machine_tags" {
#    description = "Instance tags"
#    value = "${var.instance_tags}"
# }

# output variable "instance_machine_tags" {
#    description = "Instance tags"
#    value = "${var.instance_tags}"
# }

# output variable "instance_machine_tags" {
#    description = "Instance tags"
#    value = "${var.instance_tags}"
# }

# output variable "instance_machine_tags" {
#    description = "Instance tags"
#    value = "${var.instance_tags}"
# }

# output variable "instance_machine_tags" {
#    description = "Instance tags"
#    value = "${var.instance_tags}"
# }

# output variable "instance_machine_tags" {
#    description = "Instance tags"
#    value = "${var.instance_tags}"
# }

# output variable "instance_machine_tags" {
#    description = "Instance tags"
#    value = "${var.instance_tags}"
# }

# output variable "instance_machine_tags" {
# 
}

