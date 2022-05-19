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
  project     = var.project
  region      = var.region
}

# create compute network 
resource "google_compute_network" "name_0" {
  name                    = "terraform-network"
  auto_create_subnetworks = "true"
}

# create compute subnetwork
resource "google_compute_subnetwork" "name_1" {
  name          = "terraform-subnetwork"
  ip_cidr_range = "10.0.0.0/16"
  region        = var.region
  network       = google_compute_network.name_0.self_link
}

