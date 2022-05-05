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
  name = "my-compute-network-${random_suffix}"
}

# resource block: create a compute router
resource "google_compute_router" "name_1" {
  name    = "my-compute-router-${random_suffix}"
  network = google_compute_network.name_0.name
}

