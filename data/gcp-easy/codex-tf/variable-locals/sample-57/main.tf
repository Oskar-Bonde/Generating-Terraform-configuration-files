terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block 
provider "google" {
  credentials = file("${path.module}/account.json")
  project     = var.name_0
  region      = var.region
}

# variable block
variable "name_0" {
  description = "The project to deploy to"
  type        = string
}

# local block
locals {
  # create a list of all the zones in the region
  zones = [for z in data.google_compute_zones.available.names : z]
}

