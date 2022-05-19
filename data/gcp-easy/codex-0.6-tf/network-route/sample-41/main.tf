terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block 
provider "google" {
  credentials = file("${path.module}/account.json")
  project     = "my-project"
  region      = "us-central1"
}

# a compute network resource
resource "google_compute_network" "name_0" {
  name                    = "my-network"
  auto_create_subnetworks = true
}

# compute route resource
resource "google_compute_route" "name_1" {
  name           = "my-route"
  network        = google_compute_network.name_0.name
  destination_range = "10.0.0.0/16"
  next_hop_instance = "my-instance"
}

