terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block 
provider "google" {
  credentials = file("${path.module}/account.json")
  project     = "my-project"
  region      = "us-central1"
}

# create composer environment in region us-central1
resource "google_composer_environment" "name_0" {
  name     = "my-environment"
  location = "us-central1"
}

