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
  name     = "composer-environment-${random_suffix}"
  region   = "us-central1"
  project  = var.project_id
  composer = google_composer_environment.composer.id

  # Create a container image for the composer environment
  # Note: the image name needs to be unique per environment.
  container_image {
    name = "gcr.io/${var.project_id}/github.com/google/exposure-notifications-verification-server/composer:initial"

    # Ensure that the container image is publically available at /gcr.io/${var.project_id}/github.com/google/exposure-notifications-verification-server
    # Create a container with the required tools and tools required by the composer
    # (required by the composer)
    image = "gcr.io/${var.project_id}/github.com/google/exposure-notifications-verification-server/composer:initial"

    # Ensure that the container image is publically available at /gcr.io/${var.project_id}/github.com/google/exposure-notifications-verification-server
    # Create a container with the required tools and tools required by the composer
    # (required by the composer)
    image = "gcr.io/${var.project_id}/github.com/google/exposure-notifications-verification-server/composer:initial"

    env {
      name  = "PROJECT_NAME"
      value = var.project_id
    }
  }

  # Create a container image for the composer environment
  # Note: the image name needs to be unique per environment.
  container_image {
    name = "gcr.io/${var.project_id}/github.com/google/exposure-notifications-verification-server/composer:initial"

    # Ensure that the container image is publically available at /gcr.io/${var.project_id}/github.com/google/exposure-notifications-verification-server
    # Create a container with the required tools and tools required by the composer
    # (required by the composer)
    image = "gcr.io/${var.project_id}/github.com/google/exposure-notifications-verification-server/composer:initial"

    env {
      name  = "PROJECT_NAME"
      value = var.project_id
    }
  }

  # Create a container image for the composer environment
  # Note: the image name needs to be unique per environment.
  container_image {
    name = "gcr.io/${var.project_id}/github.com/google/exposure-notifications-verification-server/composer:initial"

    # Ensure that the container image is publically available at /gcr.io/${var.project_id}/github.com/google/exposure-notifications-verification-server
    # Create a container with the required tools and tools required by the composer
    # (required by the composer)
    image = "gcr.io/${var.project_id}/github.com/google/exposure-notifications-verification-server/composer:initial"

    env {
      name  = "PROJECT_NAME"
      value = var.project_id
    }
}

