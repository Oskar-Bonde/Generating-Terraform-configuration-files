terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
resource "google_compute_instance" "name_0" {
  name = "my-compute-instance-disk"
  machine_type = "f1-micro"

  network_interface {
    network = "default"    
    access_config {
    }
  }
}

# create compute network

resource "google_compute_network" "name_1" {
  name = "my-network-default"
  auto_create_subnetworks = false
}

# create compute subnetwork

resource "google_compute_subnetwork" "name_2" {
  name = "my-subnetwork-default"
  ip_cidr_range = "10.0.0.0/16"
  region = "us-central1"
  network = "default"
}

# make a compute address resource

resource "google_compute_firewall" "name_3" {
  name = "my-firewall-default"
  network = "default"

  allow {
    protocol = "tcp"
    ports    = ["80", "443"]
  }

  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["my-compute-target-group"]
}

