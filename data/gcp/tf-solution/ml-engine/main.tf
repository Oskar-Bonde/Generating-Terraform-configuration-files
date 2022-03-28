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

# ml engine model resource. With default name and in europe west 4 regions
resource "google_ml_engine_model" "name_0" {
  name        = "default"
  description = "My model"
  regions     = ["europe-west4"]
}