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
  name = "my-compute-network-${random_suffix}"
}

# compute route resource
resource "google_compute_route" "name_1" {
  name = "my-compute-route-${random_suffix}"
  network = google_compute_network.name_0.name
  next_hop_instance = google_compute_instance.vm_instance.name
}

