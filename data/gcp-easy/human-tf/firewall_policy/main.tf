# Terraform block with google provider
terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block 
provider "google" {
  region = "europe-north1"
}

# create a firewall policy
resource "google_compute_firewall_policy" "name_0" {
  parent      = "organizations/12345"
  short_name  = "my-policy"
  description = "Example Resource"
}