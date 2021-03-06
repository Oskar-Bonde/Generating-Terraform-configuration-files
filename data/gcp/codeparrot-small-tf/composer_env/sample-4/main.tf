terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with only region set to europe north1
provider "google" {
  region = "europe"
}

# create composer environment in region us-central1. Create software config and use image composer-2.0.0-preview.3-airflow-2.1.2resource.
# See https://cloud.google.com/compute/docs/instances/create#installing_the_cloud_composer_environment
resource "google_composer_environment" "name_0" {
  name = "composer-env"
  region = "us-central1"
  config {
    composer_env_version = "SUBST_ENV_1_2"
    image = "debian-cloud/debian-9"
    env_version = "SUBST_ENV_1_2"
  }
}

