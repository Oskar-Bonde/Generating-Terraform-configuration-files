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
}

# create a compute ha vpn gateway
resource "google_compute_router" "name_0" {
  name = "my-router"
  network = "default"    
  region = "us-central1"
  project = "my-project"
  region = "us-central1-b"
  bgp {
    asn = "169.254.0.0/16"
  }
}

