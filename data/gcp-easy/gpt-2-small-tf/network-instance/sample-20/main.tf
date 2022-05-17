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

# compute network resource
resource "google_compute_network" "name_0" {
  name = "my-network"
}

# a compute instance
}

