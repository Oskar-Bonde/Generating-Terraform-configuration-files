terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with only region set to europe north1
provider "google" {
}

# compute network that auto creates subnetworks
resource "google_compute_network" "name_0" {
  name = "my-network-${random_suffix}"
  auto_create_subnetworks = true
}

# a compute instance that has machine type f1-micro, debian-9 image, uses self link to vpc network and has a name
resource "google_compute_instance" "name_1" {
  name = "my-compute-instance-${random_suffix}"
  machine_type = "f1-micro"

  network_interface {
    network = "default"
    access_config {
    }
  }
}

