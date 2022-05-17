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

# create a firewall policy
resource "google_compute_firewall" "name_0" {
  name = "my-firewall-rule-rule-rule-rule-rule-rule-rule-rule-rule-rule-rule-rule-rule"
  network = "default"    
  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports = ["22"]
  }

  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["my-compute-instance-%{random_suffix}" ]
}

