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
  auto_create_subnetworks = false
}

# resource compute ha vpn gateway, in the us central1 region and use the compute network idvariable as the value for the region variable
resource "google_compute_ha_vpn_gateway" "name_1" {
  name = "my-ha-vpn-gateway"
  network = google_compute_network.name_0.id
  region = "us-central1"
  vpn_gateway_interface = "eth-1"
  # Set the static ip address as static ip
  ip_address = "192.168.0.3"
}

