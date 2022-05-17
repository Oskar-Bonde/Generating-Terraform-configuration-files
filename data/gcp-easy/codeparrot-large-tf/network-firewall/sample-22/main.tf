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
  name = "my-network-${random_suffix}"
  auto_create_subnetworks = "false"
}

# create compute firewall
resource "google_compute_firewall" "name_1" {
  name = "my-firewall-${random_suffix}"
  network = "default"
  source_ranges = ["10.0.0.0/8"]
  allow {
    protocol = "tcp"
    ports = ["80"]
  }
  target_tags = ["web"]
}
