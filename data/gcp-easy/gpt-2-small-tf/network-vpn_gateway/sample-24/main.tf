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

# create compute networkvariable "network" {
  type = "string"
}

# create a compute ha vpn gateway
resource "google_compute_router" "name_0" {
  name = "my-router-ha"
  region = "us-central1"
  network = "default"    
  bgp {
    asn = "169.254.0.0/16"
  }
}

