terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block 
provider "google" {
  credentials = file("${path.module}/credentials.json")
  project     = var.project
  region      = var.region
}

# create composer environment in region us-central1
resource "google_composer_environment" "name_0" {
  name          = "my-composer-environment"
  region        = var.region
  project       = var.project
  config {
    node_config {
      machine_type = "n1-standard-1"
      disk_size_gb = 30
      oauth_scopes = [
        "https://www.googleapis.com/auth/cloud-platform",
      ]
    }
    software_config {
      image_version = "composer-1.10.1-airflow-1.10.3"
    }
  }
}

