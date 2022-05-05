terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
provider "google" {
  credentials = file("${var.gcp_credentials_file}")
  project     = "${var.gcp_project}"
  region      = "${var.gcp_region}"
}

# create compute network
resource "google_compute_network" "name_0" {
  name                    = "terraform-network"
  auto_create_subnetworks = "true"
}

# create compute firewall
resource "google_compute_firewall" "name_1" {
  name    = "terraform-firewall"
  network = "${google_compute_network.name_0.name}"

  allow {
    protocol = "tcp"
    ports    = ["22", "80", "443"]
  }
}

