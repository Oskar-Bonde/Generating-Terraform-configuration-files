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
}

# create compute backend bucketvariable
resource "google_storage_bucket_object" "name_1" {
  name = "my-object-${random_suffix}"
  bucket = google_compute_instance.vm_instance.name
  source = "./files/my-object.txt"
}

