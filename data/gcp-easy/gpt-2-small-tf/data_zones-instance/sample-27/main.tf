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

# data block with google compute zones
resource "google_compute_zones" "name_0" {
  name        = "my-zones"
  project     = var.project_id
  region      = var.region
  zone_id     = "my-zones"
}

# make a compute instance
resource "google_compute_instance" "name_1" {
  name                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
}

