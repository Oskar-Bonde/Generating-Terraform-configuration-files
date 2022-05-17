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

# a compute network resourcevariable "network" {
  type        = "string"
  description = "The name of the network to create the compute instances in."
}

# compute route resource
}

