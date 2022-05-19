terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block 
provider "google" {
  credentials = file("${path.module}/service-account.json")
  project     = "my-project"
  region      = "us-central1"
}

# create compute network
resource "google_compute_network" "name_0" {
  name                    = "vpc-network"
  auto_create_subnetworks = "true"
}

# create compute subnetwork
resource "google_compute_subnetwork" "name_1" {
  name          = "vpc-subnetwork"
  ip_cidr_range = "10.0.0.0/16"
  network       = google_compute_network.name_0.self_link
  region        = "us-central1"
}

# make a compute address resource
resource "google_compute_address" "name_2" {
  name = "vpc-address"
}

