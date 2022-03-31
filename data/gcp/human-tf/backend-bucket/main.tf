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

# create storage bucket resource, give it a name and set location to EU
resource "google_storage_bucket" "name_0" {
  name     = "image-store-bucket"
  location = "EU"
}

# create compute backend bucket, give it a name, use bucket name from storage bucket and enable cdn
resource "google_compute_backend_bucket" "name_1" {
  name        = "image-backend-bucket"
  description = "Contains beautiful images"
  bucket_name = google_storage_bucket.name_0.name
  enable_cdn  = true
}