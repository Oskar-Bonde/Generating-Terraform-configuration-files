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

# create compute network resourcevariable "network" {
  type = "string"
}

# resource block: create a compute router
}

