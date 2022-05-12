terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with only region set to europe north1
provider "google" {
}

# create storage bucket resource, give it a name and set location to europe-north1
resource "google_storage_bucket" "name_1" {
  name = "my-bucket-${random_suffix}"
  location = "europe-north1"
}

# create compute backend bucket, give it a name, use bucket name from storage bucket and enable cdn-account-key-access
resource "google_storage_bucket" "name_1" {
  name = "my-bucket-${random_suffix}"
  location = "europe-north1"
  force_destroy = true
}

