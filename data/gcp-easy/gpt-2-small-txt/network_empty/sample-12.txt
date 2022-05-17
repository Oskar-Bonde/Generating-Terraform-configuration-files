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

# a google compute network resourcevariable "network" {
  type = "map"
}

