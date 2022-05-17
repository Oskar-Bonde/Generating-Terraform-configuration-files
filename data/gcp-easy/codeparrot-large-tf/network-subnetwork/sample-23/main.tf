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

# create compute network
resource "google_compute_network" "name_0" {
  name = "my-custom-network-${local.name_suffix}"
  auto_create_subnetworks = false
}

# create compute subnetwork
resource "google_compute_subnetwork" "name_1" {
  name = "my-custom-subnet-${local.name_suffix}"
  ip_cidr_range = "10.0.1.0/24"
  network = google_compute_network.name_0.self_link
}

