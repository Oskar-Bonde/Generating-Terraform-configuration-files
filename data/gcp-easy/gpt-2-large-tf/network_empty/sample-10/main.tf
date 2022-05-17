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

# a google compute network resource

resource "google_compute_network" "name_0" {
  name                    = "my-network-${random_suffix}"
  auto_create_subnetworks = false
}

