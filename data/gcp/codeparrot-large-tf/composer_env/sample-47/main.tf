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

# create composer environment in region us-central1. Create software config and use image composer-2.0.0-preview.3-airflow-2.1.2 (Ubuntu Server 16.04 LTS, SDD Volume Type)
resource "google_composer_environment" "name_0" {
  name     = "composer-environment-${local.name_suffix}"
  region   = "us-central1"
  project  = google_project.project.project_id

  build {
    runner = "gcr.io/google-cloud-run-transforms/run-builder"
    command  = "${path.module}/../scripts/apply-composer-environment.sh"
    environment = {
      PROJECT_ID = google_project.project.project_id
      TAG        = local.name_suffix
      BODY_URL  = google_composer_environment.name_0.latest_built_version.url
    }
  }

  depends_on = [google_project_service.composer]
}

