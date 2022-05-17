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
  name = "my-network-1"
}

# resource block: create a compute router
}

