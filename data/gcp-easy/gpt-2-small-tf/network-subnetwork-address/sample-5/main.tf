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
  name = "my-network"
  auto_create_subnetworks = "false"
}

# create compute subnetwork
}

# make a compute address resource
}

