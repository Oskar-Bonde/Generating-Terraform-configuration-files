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
  name = "my-network"
  project = var.project_id
}

# create a compute ha vpn gatewayresource "google_compute_router" "default" {
  name = "my-router"
  project = var.project_id
}

