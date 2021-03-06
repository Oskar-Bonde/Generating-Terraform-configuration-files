# Terraform block with google provider
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
  name                    = "network"
  routing_mode            = "GLOBAL"
  auto_create_subnetworks = false
}

# resource compute ha vpn gateway, in the us central1 region and use the compute network id
resource "google_compute_ha_vpn_gateway" "name_1" {
  region   = "us-central1"
  name     = "ha-vpn"
  network  = google_compute_network.name_0.id
}