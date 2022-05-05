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
  name     = "${var.bucket_name}"
  location = "${var.region}"
}

# create compute backend bucket
resource "google_compute_backend_bucket" "name_1" {
  name          = "${var.backend_bucket_name}"
  bucket_name   = "${google_storage_bucket.name_0.name}"
  description   = "${var.backend_bucket_description}"
  enable_cdn    = "${var.backend_bucket_enable_cdn}"
  project       = "${var.project}"
}

