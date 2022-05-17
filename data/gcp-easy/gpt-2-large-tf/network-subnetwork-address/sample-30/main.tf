terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
provider "google-beta" {
  project = var.project_id
  region  = var.region
  zone    = var.zone
}

# create compute network

resource "google_compute_network" "name_0" {
  name = "my-network-${random_suffix}"
  auto_create_subnetworks = false
}

# create compute subnetwork

resource "google_compute_subnetwork" "name_1" {
  name          = "my-subnetwork-${random_suffix}"
  ip_cidr_range = "10.0.0.0/16"
  network       = google_compute_network.name_0.self_link
  region        = var.region
  private_ip_google_access = true
}

# make a compute address resource

resource "google_compute_address" "name_2" {
  name = "my-address-${random_suffix}"
  address = "10.0.0.0/24"
}

