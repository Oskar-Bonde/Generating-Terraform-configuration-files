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
}

# create composer environment in region us-central1

resource "google_compute_firewall" "name_0" {
  name    = "allow-all"
  network = google_compute_network.default.name
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

  target_tags = ["allow-all"]
}

