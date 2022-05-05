terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
provider "google" {
}

# create compute network 
resource "google_compute_network" "name_0" {
  name = "my-compute-network"
}

# create compute firewall
resource "google_compute_firewall" "name_1" {
  name = "my-compute-firewall"
  network = google_compute_network.name_0.name

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports = ["22", "80"]
  }
}

