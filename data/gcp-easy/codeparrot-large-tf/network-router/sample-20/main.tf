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
  name = "my-network-${local.name_suffix}"
}

# resource block: create a compute routervariable
resource "google_compute_router_variable" "name_1" {
  name = "my-router-variable-${local.name_suffix}"
  network = google_compute_network.name_0.self_link
}

