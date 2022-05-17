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
  type        = string
  description = "The name of the network to create the compute instances in"
}

# resource block: create a compute router
}

