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

# data block with google compute zonesvariable "zones" {
  type = "map"
}

# make a compute instancevariable "compute_instance" {
  type = "map"
}

