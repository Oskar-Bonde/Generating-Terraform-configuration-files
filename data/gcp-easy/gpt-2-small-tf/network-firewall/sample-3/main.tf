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

# create compute network
resource "google_compute_network" "name_0" {
  name = "my-network"
}

# create compute firewall
}

