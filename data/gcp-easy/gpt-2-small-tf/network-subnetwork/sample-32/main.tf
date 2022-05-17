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

# create compute networkvariable "network" {
  name = "my-network"
}

# create compute subnetwork
}

