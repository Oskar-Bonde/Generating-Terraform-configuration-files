terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block 
provider "google" {
  project = var.project
  region  = var.region
  zone    = var.zone
}

# create a firewall policy
resource "google_compute_firewall_policy" "name_0" {
  name = "policy-1"
  description = "policy-1 description"
}

