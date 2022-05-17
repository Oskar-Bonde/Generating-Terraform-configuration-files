terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
provider "google-beta" {
}

# create compute network

resource "google_compute_network" "name_0" {
  name = "my-network-${random_suffix}"
  auto_create_subnetworks = false
}

# create compute subnetwork

resource "google_compute_subnetwork" "name_1" {
  name = "my-subnetwork-${random_suffix}"
  ip_cidr_range = "10.0.0.0/16"
  region = "us-central1"
}

# make a compute address resource

resource "google_compute_firewall" "name_2" {
  name = "my-firewall-${random_suffix}"
  network = "default"
  source_ranges = ["0.0.0.0/0"]
  allow {
    protocol = "tcp"
    ports    = ["22"]
  }
  allow {
    protocol = "udp"
    ports    = ["80"]
  }
  allow {
    protocol = "icmp"
    ports    = ["443"]
  }
  allow {
    protocol = "icmp"
    ports    = ["443"]
  }
  allow {
    protocol = "tcp"
    ports    = ["443"]
  }
  allow {
    protocol = "udp"
    ports    = ["443"]
  }
  allow {
    protocol = "icmp"
    ports    = ["443"]
  }
  allow {
    protocol = "tcp"
    ports    = ["443"]
  }
  allow {
    protocol = "udp"
    ports    = ["443"]
  }
  allow {
    protocol = "icmp"
    ports    = ["443"]
  }
  allow {
    protocol = "tcp"
    ports    = ["443"]
  }
  allow {
    protocol = "udp"
    ports    = ["443"]
  }
  allow {
    protocol = "icmp"
    ports    = ["443"]
  }
  allow {
    protocol = "tcp"
    ports    = ["443"]
  }
  allow {
    protocol = "udp"
    ports    = ["443"]
  }
  allow {
    protocol = "icmp"
    ports    = ["443"]
  }
  allow {
    protocol = "tcp"
    ports    = ["443"]
  }
  allow {
    protocol = "udp"
    ports    = ["443"]
  }
  allow {
    protocol = "icmp"
    ports    = ["443"]
  }
  allow {
    protocol = "tcp"
    ports    = ["443"]
  }
  allow {
    protocol = "udp"
    ports    = ["443"]
  }
  allow {
    protocol = "icmp"
    ports    = ["443"]
  }
  allow {
    protocol = "tcp"
    ports    = ["443"]
  }
  allow {
    protocol = "udp"
    ports    = ["443"]
  }
  allow {
    protocol = "icmp"
    ports    = ["443"]
  }
  allow {
    protocol = "tcp"
    ports
}

