terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with only region set to europe north1
provider "google" {
  region = "europe"
}

# compute network that auto creates subnetworksresource.example.com
resource "google_compute_network" "name_0" {
  name                    = "compute-network"
  auto_create_subnetworks = false
}
