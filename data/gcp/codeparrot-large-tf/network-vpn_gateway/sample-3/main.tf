terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with only region set to europe north1
provider "google" {
}

# create compute network with global routing mode and set auto create subnetworks to false
resource "google_compute_network" "name_0" {
  name = "my-network"
}

# resource compute ha vpn gateway, in the us central1 region and use the compute network id as a proxy for the VPN tunnel
resource "google_compute_ha_vpn_gateway" "name_1" {
  name    = "my-ha-vpn-gw"
  network = google_compute_network.name_0.id
  region  = "europe-west1"
  vpn_gateway = google_compute_ha_vpn_gateway.name_1.id
}

