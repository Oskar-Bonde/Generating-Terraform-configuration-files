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
  name = "my-custom-network-${local.name_suffix}"
  auto_create_subnetworks = false
}

# resource block: create a compute router
resource "google_compute_router" "name_1" {
  name    = "my-router-${local.name_suffix}"
  network = google_compute_network.name_0.self_link
  region  = "us-central1"
}

