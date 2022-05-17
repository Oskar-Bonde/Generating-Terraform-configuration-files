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
  project = var.project_id
  region = var.region
}

# create compute subnetwork
}

