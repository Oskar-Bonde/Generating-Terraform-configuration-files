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
  name = "my-network-${local.name_suffix}"
}

# resource compute ha vpn gateway, in the us central1 region and use the compute network idvariable as the internal routing table
resource "google_compute_ha_vpn_gateway" "name_1" {
  name = "my-ha-vpn-${local.name_suffix}"
  network = "default"
  region = "us-central1"
  vpn_gateway_interface = "eth-1"
  auto_create_subnetworks = false
}
