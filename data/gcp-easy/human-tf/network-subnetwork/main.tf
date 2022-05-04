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

# create compute network 
resource "google_compute_network" "name_0" {
  name = "my-network"
}

# create compute subnetwork
resource "google_compute_subnetwork" "name_1" {
  name          = "my-subnet"
  ip_cidr_range = "10.0.0.0/16"
  network       = google_compute_network.name_0.id
}
