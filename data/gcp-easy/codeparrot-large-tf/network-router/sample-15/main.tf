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

# create compute network resource 
resource "google_compute_network" "name_0" {
  name = "my-network-${random_suffix}"
  auto_create_subnetworks = "false"
}

# resource block: create a compute routervariable
resource "google_compute_router_variable" "name_1" {
  name = "my-router-variable-${random_suffix}"
  region = "us-central1"
  network = google_compute_network.name_0.id
}

