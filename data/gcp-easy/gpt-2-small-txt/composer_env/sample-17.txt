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

# create composer environment in region us-central1resource "google_compute_region_environment" "region" {
  name = "region"
  region = "us-central1"
}

