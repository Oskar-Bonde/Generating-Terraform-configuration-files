terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with only region set to europe north1
provider "google" {
}

# create a firewall policy. Set parent to "organizations/12345" and set short name to my policy
resource "google_compute_firewall" "name_0" {
  name = "my-firewall"
  network = "default"    
  project = "my-project"
  allow {
    protocol = "tcp"
    ports = ["80", "443"]
  }

  source_ranges = ["130.211.0.0/22", "35.191.0.0/16"]
  target_tags = ["my-tag"]
}

