terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
provider "google" {
  credentials = file("${path.module}/account.json")
  project     = var.project
  region      = var.region
}

# a google compute network resource 
resource "google_compute_network" "name_0" {
  name                    = var.network_name
  auto_create_subnetworks = "true"
}

