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

# create storage bucket resourceresource "google_storage_bucket" "storage_bucket" {
  name = "my-storage-bucket"
  location = "us-central1"
  force_destroy = true
  force_destroy_for_update = true
  project = "my-project"
}

# create compute backend bucket
}

