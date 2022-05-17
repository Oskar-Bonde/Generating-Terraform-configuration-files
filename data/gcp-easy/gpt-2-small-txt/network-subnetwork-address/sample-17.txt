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

# create compute networkresource "google_compute_network" "default" {
  name = "my-network"
  project = var.project_id
  region = var.region
}

# create compute subnetwork
}

# make a compute address resource
}

