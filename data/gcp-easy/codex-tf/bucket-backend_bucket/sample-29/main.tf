terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
provider "google" {
  credentials = file("${var.credentials_file}")
  project     = "${var.project}"
  region      = "${var.region}"
}

# create storage bucket resource
resource "google_storage_bucket" "name_0" {
  name     = "my-bucket"
  location = "US"
}

# create compute backend bucket
resource "google_compute_backend_bucket" "name_1" {
  name          = "my-backend-bucket"
  bucket_name   = "${google_storage_bucket.name_0.name}"
  description   = "my backend bucket"
  enable_cdn    = true
  project       = "${var.project}"
}

