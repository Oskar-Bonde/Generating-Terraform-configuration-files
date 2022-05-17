terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
provider "google-beta" {
}

# create compute network
resource "google_compute_network" "name_0" {
  name = "my-network"
}

# create a compute ha vpn gatewayresource "google_compute_router" "default" {
  name = "my-router"
  region = "us-central1"
  network = "default"    
}

