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

# make a compute address resource
resource "google_compute_address" "name_2" {
  name         = "my-internal-address"
  subnetwork   = google_compute_subnetwork.name_1.id
  address_type = "INTERNAL"
  address      = "10.0.42.42"
}