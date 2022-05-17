terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with only region set to europe north1-standard and the instance
resource "google_compute_instance" "name_0" {
  name = "my-compute-instance-disk"
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

# create compute network with global routing mode and set auto create subnetworks to false
resource "google_compute_network" "name_1" {
  name = "my-network-${local.name_suffix}"
  auto_create_subnetworks = false
}

# resource compute ha vpn gateway, in the us central1 region and use the compute network id
resource "google_compute_subnetwork" "name_2" {
  name = "my-subnetwork-${local.name_suffix}"
  ip_cidr_range = "10.0.0.0/16"
  region = "us-central1"
}

