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

# create a firewall policy
resource "google_compute_firewall" "name_0" {
  name                                    = "fw-my-firewall"
  network                                 = google_compute_network.network.name
  source_ranges                            = ["35.191.0.0/16"]
  allow {
    protocol = "tcp"
    ports    = ["22"]
  }
  target_tags                             = ["my-compute-instance"]
  source_tags                             = ["my-compute-instance-tag"]
  target_service_accounts                 = ["my-compute-instance-service-account"]
  allow {
    protocol = "tcp"
    ports    = ["80"]
  }
}

