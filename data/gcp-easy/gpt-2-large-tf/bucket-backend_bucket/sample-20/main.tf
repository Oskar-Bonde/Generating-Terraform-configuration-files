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

# create storage bucket resource

resource "google_compute_firewall" "name_0" {
  name = "my-firewall-default"
  network = "default
}

# create compute backend bucket
}

