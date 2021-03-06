terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
provider "google-beta" {
  project = var.project_id
  region  = var.region
  zone    = var.zone
}

# create storage bucket resource

resource "google_compute_firewall" "name_1" {
  name    = "my-firewall-${local.name_suffix}"
  network = google_compute_network.default.name
  source_ranges = ["0.0.0.0/0"]

  allow {
    protocol = "tcp"
    ports    = ["80", "443"]
  }

  allow {
    protocol = "udp"
    ports    = ["443"]
  }

  target_tags = ["my-firewall-${local.name_suffix"]
}

# create compute backend bucket

resource "google_compute_firewall" "name_1" {
  name    = "my-firewall-${local.name_suffix}"
  network = google_compute_network.default.name
  source_ranges = ["0.0.0.0/0"]

  allow {
    protocol = "tcp"
    ports    = ["443"]
  }

  allow {
    protocol = "udp"
    ports    = ["443"]
  }

  target_tags = ["my-firewall-${local.name_suffix"]
}

