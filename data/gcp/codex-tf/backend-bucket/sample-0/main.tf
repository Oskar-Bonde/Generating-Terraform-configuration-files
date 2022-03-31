terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
provider "google" {
  credentials = "${file("${path.module}/credentials.json")}"
  project     = "${var.project}"
}

# create storage bucket resource, give it a name and set location to EU
resource "google_storage_bucket" "name_0" {
  name     = "tf-test-bucket-%{random_suffix}"
  location = "EU"
}

# create compute backend bucket, give it a name, use bucket name from storage bucket and enable cdn
resource "google_compute_backend_bucket" "name_1" {
  name        = "tf-test-backend-%{random_suffix}"
  bucket_name = google_storage_bucket.name_0.name
  enable_cdn  = true
}

