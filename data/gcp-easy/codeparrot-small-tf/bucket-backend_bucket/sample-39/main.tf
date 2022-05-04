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

# create compute backend bucketresource
resource "google_compute_backend_bucket" "name_1" {
  name = "my-bucket-${random_suffix}"
  location = "US"
  bucket_class = "REGIONAL"
  enable_cdn  = true
  cdn_policy {
    cache_mode = "CACHE_ALL_STATIC"
    default_ttl = 3600
    max_ttl = 86400
  }
}

