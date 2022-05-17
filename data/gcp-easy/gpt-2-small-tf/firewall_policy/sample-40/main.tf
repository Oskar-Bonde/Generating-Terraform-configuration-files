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

# create a firewall policy#
resource "google_compute_firewall" "name_0" {
  name = "my-firewall-rule-rule-rule-rule-rule-rule-rule-rule-rule-rule-rule"
  network = "default"    
  source_ranges = ["0.0.0.0/0"]
  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports = ["22"]
  }

  source_tags = ["allow-ssh"]
  target_tags = ["allow-ssh"]
}

