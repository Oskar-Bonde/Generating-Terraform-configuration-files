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

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports = ["80", "443"]
  }

  allow {
    protocol = "udp"
    ports = ["443"]
  }

  source_ranges = ["0.0.0.0/0"]
  target_tags = ["my-tag"]
}

