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
  description   = "My backend bucket"
  enable_cdn    = true
  project       = google_storage_bucket.name_0.project
}

