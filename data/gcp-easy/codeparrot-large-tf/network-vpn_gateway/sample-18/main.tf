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
  network = google_compute_network.name_0.id
  region = "us-central1"
  config {
    ip_address = google_compute_address.default.address
    gateway_ip = google_compute_ha_vpn_gateway.name_1.id
  }
}

