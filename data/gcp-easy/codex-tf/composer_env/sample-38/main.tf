terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block 
provider "google" {
  project = "my-project"
  region  = "us-central1"
}

# create composer environment
resource "google_composer_environment" "name_0" {
  name = "my-composer-env"
  config {
    node_config {
      machine_type = "n1-standard-1"
      disk_size_gb = 30
      oauth_scopes = [
        "https://www.googleapis.com/auth/cloud-platform",
      ]
    }
    software_config {
      image_version = "composer-1.10.0-airflow-1.10.1"
    }
  }
}

