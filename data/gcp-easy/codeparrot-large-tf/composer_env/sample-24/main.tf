terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
provider "google" {
}

# create composer environment in region us-central1
resource "google_composer_environment" "name_0" {
  name     = "env-${random_suffix}"
  region   = "us-central1"
  project  = google_project.project.project_id

  composer_env {
    image = "debian-cloud/debian-9"
  }

  depends_on = [
    google_project_service.composer_api,
    google_project_service.composer_container_api,
    google_project_service.composer_service_container_api
  ]
}

