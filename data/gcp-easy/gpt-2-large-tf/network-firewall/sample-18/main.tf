terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider blockresource "google_compute_instance" "vm_instance" {
  name = "my-compute-instance-ssh"
  machine_type = "f1-micro"

  network_interface {
    network = "default"    
    access_config {
    }
  }
}

# create compute network

resource "google_compute_network" "name_0" {
  name = "my-network-ssh"
  auto_create_subnetworks = false
}

# create compute firewall

resource "google_compute_subnetwork" "name_1" {
  name = "my-subnetwork-ssh"
  ip_cidr_range = "10.0.0.0/16"
  region = "us-central1"
}

