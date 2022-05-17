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

# create compute network resourceresource "google_compute_network" "default" {
  name = "my-network-resource"
  project = var.project_id
  region = var.region
}

# resource block: create a compute router
}

