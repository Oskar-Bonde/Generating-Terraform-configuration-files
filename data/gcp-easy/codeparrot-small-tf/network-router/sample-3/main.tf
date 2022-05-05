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
  name                    = "my-compute-network"
  auto_create_subnetworks = false
}

# resource block: create a compute routerresource
resource "google_compute_router" "name_1" {
  name    = "my-compute-router"
  network = google_compute_network.name_0.name
  region  = "us-central1"
}

