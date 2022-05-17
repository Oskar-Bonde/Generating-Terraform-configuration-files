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

# create storage bucket resource

resource "google_compute_firewall" "name_0" {
  name    = "allow_all_internal"
}

# create compute backend bucket
}

