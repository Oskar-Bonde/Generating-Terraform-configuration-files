terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block 
provider "google" {
  credentials = file("credentials.json")
  project     = "my-project"
  region      = "us-central1"
}

# create composer environment
resource "google_composer_environment" "name_0" {
  name = "my-environment"
  config {
    node_count = 3
    software_config {
      image_version = "composer-1.7.1-airflow-1.10.1"
    }
  }
}

