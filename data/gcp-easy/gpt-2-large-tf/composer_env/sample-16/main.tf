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

# create composer environment in region us-central1

resource "google_compute_firewall" "name_0" {
  name = "my-firewall-default
}

