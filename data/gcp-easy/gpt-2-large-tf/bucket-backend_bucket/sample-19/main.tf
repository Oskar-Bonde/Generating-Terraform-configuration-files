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

# create storage bucket resource

resource "google_compute_firewall" "name_0" {
  name    = "my-firewall-default"
  network = "default"

  allow {
    protocol = "tcp"
    ports    = ["80"]
  }

  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["my-firewall-default"]
}

# create compute backend bucket

resource "google_compute_firewall" "name_1" {
  name    = "my-firewall-vm-instance"
  network = "default"

  allow {
    protocol = "tcp"
    ports    = ["80"]
  }

  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["my-firewall-vm-instance"]
}

