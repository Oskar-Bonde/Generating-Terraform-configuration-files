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
  project     = var.project
  region      = var.region
}

# create compute network
resource "google_compute_network" "name_0" {
  name                    = "network-1"
  auto_create_subnetworks = true
}

# create a compute ha vpn gateway
resource "google_compute_ha_vpn_gateway" "name_1" {
  name        = "ha-vpn-gateway-1"
  network     = google_compute_network.name_0.name
  description = "HA VPN Gateway"
}

