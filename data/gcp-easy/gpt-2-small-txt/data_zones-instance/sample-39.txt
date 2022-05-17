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

# data block with google compute zonesvariable "zone" {
  type = "map"
}

# make a compute instancevariable "instance_count" {
  type = "map"
}

