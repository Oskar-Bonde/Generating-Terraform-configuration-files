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
  location = "US"
  uniform_bucket_level_access = true
}

# create compute backend bucket 
resource "google_compute_backend_bucket" "name_1" {
  name = "my-bucket-${random_suffix}"
  location = "US"
  enable_cdn  = true
  cdn_policy {
    cache_mode = "CACHE_ALL_STATIC"
    client_ttl  = "3600"
    default_ttl = "3600"
    max_ttl     = "3600"
  }
}
