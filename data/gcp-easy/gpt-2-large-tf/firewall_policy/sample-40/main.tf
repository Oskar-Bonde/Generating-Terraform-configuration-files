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

# create a firewall policy

resource "google_compute_firewall" "name_0" {
  name = "my-firewall-default"
  network = "default
}

