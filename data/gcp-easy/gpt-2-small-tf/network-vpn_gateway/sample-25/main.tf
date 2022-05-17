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

# create compute networkresource "google_compute_network" "default" {
  name = "my-network-default"
  project = var.project_id
  region = var.region
  network = google_compute_network.default.self_link
}

# create a compute ha vpn gateway
resource "google_compute_router" "name_0" {
  name = "my-router-default"
  project = var.project_id
  region = var.region
  network = google_compute_network.default.self_link
}

