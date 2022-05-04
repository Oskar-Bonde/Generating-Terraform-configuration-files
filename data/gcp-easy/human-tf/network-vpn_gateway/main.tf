# Terraform block with google provider
terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block 
provider "google" {
  region = "europe-north1"
}

# create compute network
resource "google_compute_network" "name_0" {
  name                    = "network"
  routing_mode            = "GLOBAL"
  auto_create_subnetworks = false
}

# create a compute ha vpn gateway
resource "google_compute_ha_vpn_gateway" "name_1" {
  region   = "us-central1"
  name     = "ha-vpn"
  network  = google_compute_network.name_0.id
}