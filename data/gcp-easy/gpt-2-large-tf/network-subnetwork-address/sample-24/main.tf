terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider blockresource "google_compute_instance" "vm_instance" {
  name = "my-compute-instance-1a"
  machine_type = "f1-micro"

  network_interface {
    network = "default"    
    access_config {
    }
  }
}

# create compute network

resource "google_compute_network" "name_0" {
  name = "my-network-1a"
  auto_create_subnetworks = false
}

# create compute subnetwork

resource "google_compute_subnetwork" "name_1" {
  name = "my-subnetwork-1a"
  ip_cidr_range = "10.0.0.0/16"
  region = "us-central1"
}

# make a compute address resource

resource "google_compute_address" "name_2" {
  name = "my-address-1a"
  network = "default"
  region = "us-central1"
}

