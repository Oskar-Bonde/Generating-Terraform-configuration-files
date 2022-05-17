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

# a google compute network resource
resource "google_compute_network" "name_0" {
  name = "my-network-${local.name_suffix}"
  auto_create_subnetworks = false
}

