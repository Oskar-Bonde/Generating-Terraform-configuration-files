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
  name = "my-network-${local.name_suffix}"
}

# create a compute ha vpn gatewayvariable
resource "google_compute_ha_vpn_gateway" "name_1" {
  name    = "my-ha-vpn-gw-${local.name_suffix}"
  network = google_compute_network.name_0.name
  region  = "us-central1"
}

