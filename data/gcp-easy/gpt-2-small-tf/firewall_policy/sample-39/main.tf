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
  name                                     = "my-firewall-rule-rule-rule-rule-rule-rule-rule-rule-rule-rule-rule-rule-rule-rule-rule"
  network                                    = google_compute_network.default.name
  source_ranges                              = ["130.211.0.0/22", "35.191.0.0/16"]
  allow_stopping_for_update = true
  allow_stopping_for_update_since_created = true

  allow {
    protocol = "tcp"
    ports    = ["80", "443"]
  }

  source_tags = ["my-firewall-rule-rule-rule-rule-rule-rule-rule-rule-rule-rule-rule-rule-rule-rule-rule"]
}

