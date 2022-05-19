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
  name        = "${var.bucket_name}"
  description = "Backend bucket for ${var.bucket_name}"
  bucket_name = "${var.bucket_name}"
}

