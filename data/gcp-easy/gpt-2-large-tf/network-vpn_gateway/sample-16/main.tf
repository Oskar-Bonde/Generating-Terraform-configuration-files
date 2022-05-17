terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
provider "google-beta" {
}

# create compute network

resource "google_compute_network" "name_0" {
  name = "my-network-${local.name_suffix}"
  auto_create_subnetworks = false
}

# create a compute ha vpn gateway

resource "google_compute_subnetwork" "name_1" {
  name = "my-subnetwork-${local.name_suffix}"
  ip_cidr_range = "10.0.0.0/16"
  network = "default"
}

