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
  location = "EU"
}

# create compute backend bucket resource
resource "google_compute_backend_bucket" "name_1" {
  name = "my-bucket-${random_suffix}"
  bucket_name = google_storage_bucket.name_0.name
  enable_cdn  = true
  cdn_policy {
    cache_mode = "CACHE_ALL_STATIC"
  }
}

