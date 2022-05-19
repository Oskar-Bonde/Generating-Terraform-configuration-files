terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block 
provider "google" {
  credentials = file("${path.module}/account.json")
  project     = "my-project"
  region      = "us-central1"
}

# create compute network
resource "google_compute_network" "name_0" {
  name                    = "my-network"
  auto_create_subnetworks = "true"
}

# create a compute ha vpn gateway
resource "google_compute_ha_vpn_gateway" "name_1" {
  name    = "my-ha-vpn-gateway"
  network = google_compute_network.name_0.name
}

