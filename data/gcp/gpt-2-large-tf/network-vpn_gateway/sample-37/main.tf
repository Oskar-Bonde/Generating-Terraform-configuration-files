terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with only region set to europe north1-micro, debian-9 image and default network interface
resource "google_compute_instance" "name_0" {
  name = "my-compute-instance-1-micro"
  machine_type = "f1-micro"

  network_interface {
    network = "default"    
    access_config {
    }
  }
}

# create compute network with global routing mode and set auto create subnetworks to false
resource "google_compute_network" "name_1" {
  name = "my-network-1-micro"
  auto_create_subnetworks = false
}

# resource compute ha vpn gateway, in the us central1 region and use the compute network id
resource "google_compute_subnetwork" "name_2" {
  name = "my-subnetwork-1-micro"
  ip_cidr_range = "10.0.0.0/16"
  region = "us-central1"
}
