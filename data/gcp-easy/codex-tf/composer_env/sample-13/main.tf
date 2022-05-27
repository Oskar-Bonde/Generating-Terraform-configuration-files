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

# create composer environment
resource "google_composer_environment" "name_0" {
  name = "my-composer-environment"
  config {
    node_count = 1
    software_config {
      image_version = "composer-1.10.2-airflow-1.10.3"
    }
  }
}

