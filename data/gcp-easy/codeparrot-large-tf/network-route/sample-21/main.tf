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
  name = "my-network-${local.name_suffix}"
}

# compute route resourcevariable
resource "google_compute_route" "name_1" {
  name       = "internet-access-${local.name_suffix}"
  dest_range = "0.0.0.0/0"
  network    = google_compute_network.name_0.self_link
}

