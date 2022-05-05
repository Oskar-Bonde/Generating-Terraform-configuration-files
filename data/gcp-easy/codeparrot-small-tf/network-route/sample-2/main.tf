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

# a compute network resource
resource "google_compute_network" "name_0" {
  name                    = "my-compute-network"
  auto_create_subnetworks = false
}

# compute route resource
resource "google_compute_route" "name_1" {
  name                = "my-compute-route"
  dest_range          = "0.0.0.0/0"
  network             = google_compute_network.name_0.id
  next_hop_instance = google_compute_instance.vm_instance.id
}

