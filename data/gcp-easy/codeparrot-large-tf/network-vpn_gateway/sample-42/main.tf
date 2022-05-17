terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
provider "google" {
}

# create compute network
resource "google_compute_network" "name_0" {
  name = "my-network-${random_suffix}"
  auto_create_subnetworks = "false"
}

# create a compute ha vpn gateway
resource "google_compute_ha_vpn_gateway" "name_1" {
  name = "my-ha-vpn-gw-${random_suffix}"
  network = google_compute_network.name_0.name
  region = "us-central1"
  vpn_gateway_interface = "eth-1"
  # Set the static ip to 'gateway'
  ip_address = "192.168.0.1"
  # Set the static ip to 'vpn-gw'
  static_routes = ["0.0.0.0/0"]
}

