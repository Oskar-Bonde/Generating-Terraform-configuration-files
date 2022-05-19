terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block 
provider "google" {
  credentials = file("credentials.json")
  project     = "my-project"
  region      = "us-central1"
}

# create compute network 
resource "google_compute_network" "name_0" {
  name = "my-network"
}

# create compute subnetwork
resource "google_compute_subnetwork" "name_1" {
  name          = "my-subnetwork"
  ip_cidr_range = "10.0.0.0/16"
  network       = google_compute_network.name_0.self_link
  region        = "us-central1"
}

