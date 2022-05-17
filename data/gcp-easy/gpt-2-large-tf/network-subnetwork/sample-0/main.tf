terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider blockresource "google_compute_instance" "vm_instance_disk" {
  name = "my-compute-instance-disk-1"
  machine_type = "f1-micro"

  network_interface {
    network = "default"    
    access_config {
    }
  }
}

# create compute network

resource "google_compute_network" "name_0" {
  name = "my-network-1"
  auto_create_subnetworks = false
}

# create compute subnetwork

resource "google_compute_subnetwork" "name_1" {
  name = "my-subnetwork-1"
  ip_cidr_range = "10.0.0.0/16"
  region = "us-central1"
}

