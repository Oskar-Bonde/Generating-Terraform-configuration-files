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
  name = "my-network-%{random_suffix}"
}

# create compute subnetwork
resource "google_compute_subnetwork" "name_1" {
  name = "my-subnetwork-%{random_suffix}"
}

