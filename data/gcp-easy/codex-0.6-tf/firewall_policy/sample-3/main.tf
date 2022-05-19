terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block 
provider "google" {
  credentials = file("${path.module}/credentials.json")
  project     = var.project
  region      = var.region
}

# create a firewall policy
resource "google_compute_firewall_policy" "name_0" {
  name = "default-firewall-policy"
}

