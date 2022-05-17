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

resource "google_compute_instance" "name_0" {
  name = "my-compute-instance-ssh"
  machine_type = "f1-micro"

  network_interface {
    network = "default"    
    access_config {
    }
  }
}

# create a compute node group resource

resource "google_compute_instance" "name_1" {
  name = "my-compute-instance-disk-ssh"
  machine_type = "f1-micro"

  network_interface {
    network = "default"    
    access_config {
    }
  }
}

