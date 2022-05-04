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

# a compute network resource
resource "google_compute_network" "name_0" {
  name = "compute-network"
}

# compute route resource
resource "google_compute_route" "name_1" {
  name        = "network-route"
  dest_range  = "15.0.0.0/24"
  network     = google_compute_network.name_0.name
  next_hop_ip = "10.132.1.5"
  priority    = 100
}

