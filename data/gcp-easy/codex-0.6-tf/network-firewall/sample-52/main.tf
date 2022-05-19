terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
provider "google" {
  region = "us-central1"
  project = "my-project"
}

# create compute network
resource "google_compute_network" "name_0" {
  name = "my-network"
}

# create compute firewall
resource "google_compute_firewall" "name_1" {
  name = "my-firewall"
  network = google_compute_network.name_0.self_link
  allow {
    protocol = "tcp"
    ports = ["22"]
  }
}

