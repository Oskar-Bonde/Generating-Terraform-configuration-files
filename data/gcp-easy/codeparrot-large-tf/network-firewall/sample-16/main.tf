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
  name = "my-network-${local.name_suffix}"
}

# create compute firewall
resource "google_compute_firewall" "name_1" {
  name    = "my-firewall-${local.name_suffix}"
  network = "default"

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["22", "80", "443"] # ssh, http, https
  }

  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["my-tag"]
}

