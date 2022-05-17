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
  zone    = var.zone
}

# create a node template

resource "google_compute_address" "name_0" {
  name = "my-compute-address-${random_suffix}"
  address_type = "INTERNAL"
}

