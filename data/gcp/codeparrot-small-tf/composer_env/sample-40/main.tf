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

# create composer environment in region us-central1. Create software config and use image composer-2.0.0-preview.3-airflow-2.1.2resource.
resource "google_composer_environment" "name_0" {
  name = "composer-2.0.0-preview.3-airflow-2.1.2resource.${var.region}"
  region = var.region

  config {
    software_config {
      image_composer_config {
        version = "latest"
      }
    }
  }
}

