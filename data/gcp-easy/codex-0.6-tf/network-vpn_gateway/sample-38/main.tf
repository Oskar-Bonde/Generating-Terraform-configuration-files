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

# create compute network
resource "google_compute_network" "name_0" {
  name                    = var.network_name
  auto_create_subnetworks = "true"
}

# create a compute ha vpn gateway
resource "google_compute_ha_vpn_gateway" "name_1" {
  name        = var.ha_vpn_gateway_name
  network     = google_compute_network.name_0.name
  description = var.ha_vpn_gateway_description
}

