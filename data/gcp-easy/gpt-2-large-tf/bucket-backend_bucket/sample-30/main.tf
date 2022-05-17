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
  zone  = var.zone
}

# create storage bucket resource

resource "google_compute_network" "name_0" {
  name                    = "my-network-${random_suffix}"
 
}

# create compute backend bucket
}

