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

# resource compute ha vpn gateway, in the us central1 region and use the compute network idvariable to create a subnet
resource "google_compute_ha_vpn_gateway" "name_1" {
  name = "ha-vpn-1"
  network = google_compute_network.name_0.id
  region = "us-central1"
  vpn_gateway_interface = "gke-1"
  # Set the vpn_gateway_interface to be a dynamic resource
  # only valid for the region
  vpn_gateway_interface = "dynamic-1"
  # Set the igw_address to be a dynamic resource
  igw_address = "dynamic-1.1.1.1"
}

