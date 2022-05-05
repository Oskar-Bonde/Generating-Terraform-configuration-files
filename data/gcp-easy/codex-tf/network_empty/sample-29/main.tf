terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
provider "google" {
  credentials = file("account.json")
  project     = "my-project"
  region      = "us-central1"
}

# a google compute network resource 
resource "google_compute_network" "name_0" {
  name                    = "my-network"
  auto_create_subnetworks = "true"
}

