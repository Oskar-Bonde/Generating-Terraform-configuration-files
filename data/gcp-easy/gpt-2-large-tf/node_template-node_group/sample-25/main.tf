terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
provider "google-beta" {
}

# create a node template

resource "google_compute_address" "name_0" {
  name = "my-compute-address-vm-ip"
  address = "10.0.0.0/16"
}

# create a compute node group resource

resource "google_compute_instance" "name_1" {
  name = "my-compute-instance-vm-instance"
  machine_type = "f1-micro"

  network_interface {
    network = "default"    
    access_config {
    }
  }
}

