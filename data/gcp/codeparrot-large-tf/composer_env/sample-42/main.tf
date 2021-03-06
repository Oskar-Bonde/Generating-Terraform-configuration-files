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
  project  = var.project_id
  composer = google_composer_environment.name_0.id

  # Create a container image from a source image tag
  source_image_family = "debian-9"
  source_image = "debian-cloud/debian-9"

  # Create a container image from a source image tag
  source_image_project = "debian-cloud"
  source_image_family = "debian-9"

  # Create a container image from a source image tag
  source_image_project = "debian-cloud"
  source_image_family = "debian-9"

  # Create a container image from a source image tag
  source_image_project = "debian-cloud"
  source_image_family = "debian-9"

  # Create a container image from a source image tag
  source_image_project = "debian-cloud"
  source_image_family = "debian-9"

  # Create a container image from a source image tag
  source_image_project = "debian-cloud"
  source_image_family = "debian-9"

  # Create a container image from a source image tag
  source_image_project = "debian-cloud"
  source_image_family = "debian-9"

  # Create a container image from a source image tag
  source_image_project = "debian-cloud"
  source_image_family = "debian-9"

  # Create a container image from a source image tag
  source_image_project = "debian-cloud"
  source_image_family = "debian-9"

  # Create a container image from a source image tag
  source_image_project = "debian-cloud"
  source_image_family = "debian-9"

  # Create a container image from a source image tag
  source_image_project = "debian-cloud"
  source_image_family = "debian-9"

  # Create a container image from a source image tag
  source_image_project = "debian-cloud"
  source_image_family = "debian-9"

  # Create a container image from a source image tag
  source_image_project = "debian-cloud"
  source_image_family = "debian-9"

  # Create a container image from a source image tag
  source_image_project = "debian-cloud"
  source_image_family = "debian-9"

  # Create a container image from a source image tag
  source_image_project = "debian-cloud"
  source_image_family = "debian-9"

  # Create a container image from a source image tag
  source_image_project = "debian-cloud"
  source_image_family = "debian-9"

  # Create a container image from a source image tag
  source_image_project = "debian-cloud"
  source_image_family = "debian-9"

  # Create a container image from a source image tag
  source_image_project = "debian-cloud"
  source_image_family = "debian-9"

  # Create a container image from a source image tag
  source_image_project = "debian-cloud"
  source_image_family = "debian
}

