terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block 
provider "google" {
  credentials = file("${path.module}/credentials.json")
  project     = "my-project"
  region      = "us-central1"
}

# create compute network resource
resource "google_compute_network" "name_0" {
  name                    = "my-network"
  auto_create_subnetworks = "true"
}

# resource block: create a compute router 
resource "google_compute_router" "name_1" {
  name    = "my-router"
  network = google_compute_network.name_0.self_link
}

