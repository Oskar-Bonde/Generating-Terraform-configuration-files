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
  project     = var.project
  region      = var.region
}

# create storage bucket resource
resource "google_storage_bucket" "name_0" {
  name     = var.bucket_name
  location = var.region
}

# create compute backend bucket
resource "google_compute_backend_bucket" "name_1" {
  name          = var.backend_bucket_name
  bucket        = google_storage_bucket.name_0.name
  description   = "Backend bucket for ${var.project}"
  enable_cdn    = true
  project       = var.project
}

