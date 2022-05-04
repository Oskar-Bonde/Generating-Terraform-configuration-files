# Terraform block with google provider
terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
provider "google" {
  region = "europe-north1"
}

# create storage bucket resource
resource "google_storage_bucket" "name_0" {
  name     = "image-store-bucket"
  location = "europe-north1"
}

# create compute backend bucket
resource "google_compute_backend_bucket" "name_1" {
  name        = "image-backend-bucket"
  description = "Contains beautiful images"
  bucket_name = google_storage_bucket.name_0.name
  enable_cdn  = true
}