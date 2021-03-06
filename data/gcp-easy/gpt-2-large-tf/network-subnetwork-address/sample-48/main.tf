terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
provider "google-beta" {
  project = var.project_id
  region  = var.region
}

# create compute network

resource "google_compute_network" "name_0" {
  name = "my-network-${random_suffix}"
  auto_
}

# create compute subnetwork
}

# make a compute address resource
}

