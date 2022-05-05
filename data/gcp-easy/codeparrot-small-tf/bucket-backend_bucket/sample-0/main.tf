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

# create storage bucket resource
resource "google_storage_bucket" "name_0" {
  name = "my-bucket-${random_suffix}"
  location = "US"
}

# create compute backend bucket
resource "google_compute_backend_bucket" "name_1" {
  name = "my-bucket-${random_suffix}"
  location = "US"
  uniform_bucket_level_access = true
}

