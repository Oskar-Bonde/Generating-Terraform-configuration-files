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

# compute network that auto creates subnetworks
resource "google_compute_network" "name_0" {
  name                    = "terraform-network"
  auto_create_subnetworks = true
}

