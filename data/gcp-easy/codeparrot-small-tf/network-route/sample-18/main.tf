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

# a compute network resource 
resource "google_compute_network" "name_0" {
  name = "my-compute-network"
}

# compute route resourcevariable 
resource "google_compute_route" "name_1" {
  name = "my-compute-route"
}

