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

# create compute network resource 
resource "google_compute_network" "name_0" {
  name = "my-network-${random_suffix}"
  auto_create_subnetworks = "false"
}

# resource block: create a compute router
resource "google_compute_router" "name_1" {
  name    = "my-router-${random_suffix}"
  network = google_compute_network.name_0.name
  region  = "us-central1"
  bgp {
    asn = 64514
  }
}

