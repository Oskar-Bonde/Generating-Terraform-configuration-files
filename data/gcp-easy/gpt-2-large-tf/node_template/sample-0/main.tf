terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
provider "google-beta" {
}

# create a node template

resource "google_compute_address" "name_0" {
  name = "my-compute-address-${local.name_suffix}"
}

