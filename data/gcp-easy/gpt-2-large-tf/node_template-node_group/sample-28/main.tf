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

# create a node template

resource "google_compute_firewall" "name_1" {
  name    = "my-firewall-default"
  network = google_compute_network.default.name
  source_ranges = ["0.0.0.0/0"]

  allow {
    protocol = "tcp"
    ports    = ["80", "443"]
  }

  target_tags = ["default"]
}

# create a compute node group resource

resource "google_compute_firewall" "name_1" {
  name    = "my-firewall-default-${local.name_suffix}"
  network = google_compute_network.default.name
  source_ranges = ["0.0.0.0/0"]

  allow {
    protocol = "tcp"
    ports    = ["443"]
  }

  target_tags = ["default"]
}

