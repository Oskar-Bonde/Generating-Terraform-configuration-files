terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
provider "google-beta" {
  project = var.project
  region  = var.region
}

# a google compute network resource

resource "google_compute_network" "name_0" {
  name                    = "my-network-${random_suffix}"
  auto_create_subnetworks = false
}

