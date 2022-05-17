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
  name = "my-custom-network-${local.name_suffix}"
  auto_create_subnetworks = false
}

# create compute firewall
resource "google_compute_firewall" "name_1" {
  name = "allow-internal-${local.name_suffix}"
  network = google_compute_network.name_0.name

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports = ["22", "80"]
  }

  source_ranges = ["0.0.0.0/0"]
  target_tags = ["allow-internal"]
}

