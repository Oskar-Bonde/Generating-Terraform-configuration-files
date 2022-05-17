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
  name = "my-storage-bucket-%{random_suffix}"
  location = "us-central1"
  force_destroy = true
  force_update = true
}

# create compute backend bucket
}

