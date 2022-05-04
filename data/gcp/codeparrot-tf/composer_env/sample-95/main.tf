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

# create composer environment in region us-central1. Create software config and use image composer-2.0.0-preview.3-airflow-2.1.2
resource "google_composer_environment" "name_0" {
  name     = "composer-environment-${random_suffix}"
  region   = "us-central1"

  config {
    node_count = 3
  }

  composer_env {
    image = "debian-cloud/debian-9"
    type  = "DOCKER"
    network = "default"
  }

  depends_on = [
    google_project_service.composer_api,
    google_project_service.composer_container_api,
    google_project_service.composer_service_account,
    google_project_service.composer_shared_vpc_access,
    google_project_service.composer_vpc_access,
  ]
}
