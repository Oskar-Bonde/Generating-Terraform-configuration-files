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

# create compute network with global routing mode and set auto create subnetworks to false
resource "google_compute_network" "name_0" {
  name                    = "vpc-network"
  auto_create_subnetworks = false
}

# resource compute ha vpn gateway, in the us central1 region and use the compute network id
resource "google_compute_ha_vpn_gateway" "name_1" {
  name    = "vpn-gateway"
  network = google_compute_network.name_0.id
  region  = "us-central1"
}

