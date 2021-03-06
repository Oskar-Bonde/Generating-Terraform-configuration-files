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

# create composer environment in region us-central1
resource "google_composer_environment" "name_0" {
  name   = "example-composer-env"
  region = "us-central1"
 
 config {
    software_config {
      image_version = "composer-2.0.0-preview.3-airflow-2.1.2"
    }
  }
}