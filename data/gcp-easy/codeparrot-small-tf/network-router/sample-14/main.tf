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
  name = "my-compute-network"
}

# resource block: create a compute routervariable 
resource "google_compute_router_variable" "name_1" {
  name = "my-compute-router-variable"
  router = google_compute_router.default.name
  region = "us-central1"
}

