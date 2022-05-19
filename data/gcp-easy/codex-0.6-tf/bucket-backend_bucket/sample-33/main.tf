terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
provider "google" {
  credentials = file("account.json")
  project     = "my-project"
  region      = "us-central1"
}

# create storage bucket resource
resource "google_storage_bucket" "name_0" {
  name = "my-bucket"
}

# create compute backend bucket
resource "google_compute_backend_bucket" "name_1" {
  name          = "my-backend-bucket"
  bucket_name   = google_storage_bucket.name_0.name
  description   = "Backend bucket for my-bucket"
  enable_cdn    = true
  cdn_policy {
    signed_url_cache_max_age_sec = 3600
  }
}

