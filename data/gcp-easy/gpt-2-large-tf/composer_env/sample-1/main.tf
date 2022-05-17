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

# create composer environment in region us-central1

resource "google_compute_firewall" "name_0" {
  name    = "my-firewall-
}
