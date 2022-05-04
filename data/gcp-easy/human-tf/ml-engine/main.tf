# Terraform block with google provider
terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block 
provider "google" {
  region = "europe-north1"
}

# ml engine model resource
resource "google_ml_engine_model" "name_0" {
  name        = "default"
  description = "My model"
  regions     = ["europe-west4"]
}