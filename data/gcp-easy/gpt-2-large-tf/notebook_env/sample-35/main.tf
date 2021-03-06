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

# create google notebooks enviroment

resource "google_compute_firewall" "name_0" {
  name    = "my-firewall-default"
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

  allow {
    protocol = "icmp"
    ports    = ["8080"]
  }

  allow {
    protocol = "icmp"
    ports    = ["8080"]
  }

  allow {
    protocol = "tcp"
    ports    = ["8080"]
  }

  allow {
    protocol = "udp"
    ports    = ["8080"]
  }

  allow {
    protocol = "icmp"
    ports    = ["8080"]
  }

  source_ranges = ["10.0.0.0/16"]
  target_tags   = ["my-compute-firewall"]
}

