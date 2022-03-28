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

# create a firewall policy. Set parent to "organizations/12345" and set short name to my policy
resource "google_compute_firewall_policy" "name_0" {
  parent      = "organizations/12345"
  short_name  = "my-policy"
  description = "Example Resource"
}