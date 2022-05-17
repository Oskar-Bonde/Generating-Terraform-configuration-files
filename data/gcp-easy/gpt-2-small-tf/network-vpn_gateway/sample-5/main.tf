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

# create compute network
resource "google_compute_network" "name_0" {
  name = "my-network-%%{random_suffix}"
  project = var.project_id
  region = var.region
}

# create a compute ha vpn gateway
}

