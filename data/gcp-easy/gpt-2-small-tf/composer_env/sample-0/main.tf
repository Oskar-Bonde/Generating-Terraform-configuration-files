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

# create composer environment in region us-central1
resource "google_compute_environment" "name_0" {
  name = "my-env-us-central1"
  region = "us-central1"
  zone = "us-central1-a"
  name = "my-env-us-central1"
  network = "default"    
  source_tags = ["my-compute-instance"]
  target_tags = ["my-compute-instance"]
}

