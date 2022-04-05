terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with only region set to europe north1
provider "google" {
  region = "europe-north1"
}

# create a firewall policy. Set parent to "organizations/12345" and set short name to my policy
resource "google_compute_firewall" "name_0" {
  name        = "my_firewall"
  description = "firewall policy for my project"
  network     = "default"
  priority    = 1000
  direction   = "INGRESS"
  action      = "ALLOW"
  target_tags = ["my_tag"]
  source_ranges = ["10.0.0.0/8"]
  allowed = [
    {
      protocol = "icmp"
    },
    {
      protocol = "tcp"
      ports    = ["22", "80", "443"]
    }
  ]
  denied = [
    {
      protocol = "tcp"
      ports    = ["22"]
    }
  ]
  provider = "google.europe-north1"
}

