terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with only region set to europe north1-standard and the instance
resource "google_compute_instance" "name_0" {
  name = "my-compute-instance-linux"
  machine_type = "f1-micro"

  network_interface {
    network = "default"    
    access_config {
    }
  }
}

# create dns policy, enable inbound forwarding and enable logging
resource "google_compute_instance_group_manager" "name_1" {
  name = "my-compute-instance-linux"
  description = "my-compute-instance-linux"
  machine_type = "f1-micro"

  base_instance_name = "my-compute-instance-linux"
  target_size = "Standard_A0"

  base_instance_name_servers = ["${var.base_instance_name}"]
  target_size = "Standard_A1"

  base_instance_name_servers = ["${var.base_instance_name}"]
  target_size = "Standard_A2"

  base_instance_name_servers = ["${var.base_instance_name}"]
  target_size = "Standard_A3"

  base_instance_name_servers = ["${var.base_instance_name}"]
  target_size = "Standard_A4"

  base_instance_name_servers = ["${var.base_instance_name}"]
  target_size = "Standard_A5"

  base_instance_name_servers = ["${var.base_instance_name}"]
  target_size = "Standard_A6"

  base_instance_name_servers = ["${var.base_instance_name}"]
  target_size = "Standard_A7"

  base_instance_name_servers = ["${var.base_instance_name}"]
  target_size = "Standard_A8"

  base_instance_name_servers = ["${var.base_instance_name}"]
  target_size = "Standard_A9"

  base_instance_name_servers = ["${var.base_instance_name}"]
  target_size = "Standard_A10"

  base_instance_name_servers = ["${var.base_instance_name}"]
  target_size = "Standard_A11"

  base_instance_name_servers = ["${var.base_instance_name}"]
  target_size = "Standard_A12"

  base_instance_name_servers = ["${var.base_instance_name}"]
  target_size = "Standard_A13"

  base_instance_name_servers = ["${var.base_instance_name}"]
  target_size = "Standard_A14"

  base_instance_name_servers = ["${var.base_instance_name}"]
  target_size = "Standard_A11"

  base_instance_name_servers = ["${var.base_instance_name}"]
  target_size = "Standard_A12"

  base_instance_name_servers = ["${var.base_instance_name}"]
  target_size = "Standard_A13"

  base_instance_name_servers = ["${var.base_instance_name}"]
  target_size = "Standard_A14"

  base_instance_name_servers = ["${var.base_instance_name}"]
  target
}

