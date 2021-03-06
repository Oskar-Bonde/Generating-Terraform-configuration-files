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
  name = "my-env-production"
  region = "us-central1"
  zone = "us-central1-a"
  name = "my-env-production"
  tags = ["production"]
}

