terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
provider "google" {
  credentials = file("${path.module}/credentials.json")
  project     = "my-project"
  region      = "us-central1"
}

# create compute network
resource "google_compute_network" "name_0" {
  name                    = "my-network"
  auto_create_subnetworks = true
}

# create compute firewall
resource "google_compute_firewall" "name_1" {
  name    = "allow-http-https"
  network = google_compute_network.name_0.name

  allow {
    protocol = "tcp"
    ports    = ["80", "443"]
  }

  source_ranges = ["0.0.0.0/0"]
}

