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

# create storage bucket resourcevariable "storage_bucket" {
  type = "map"
}

# create compute backend bucket
}

