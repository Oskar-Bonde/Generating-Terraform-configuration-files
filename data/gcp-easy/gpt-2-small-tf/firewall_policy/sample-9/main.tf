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
  name        = "my-firewall-rule-rule-rule-rule-rule-rule-rule-rule-rule-rule-rule-rule"
  network     = google_compute_network.network.name
  direction   = "INGRESS"
  priority    = 1000
  source_ranges = ["0.0.0.0/0"]
}

