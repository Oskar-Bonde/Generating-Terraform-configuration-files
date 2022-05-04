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
  project  = var.project_id
  composer = google_composer_environment.name_0.id

  # Create a container image for the composer environment
  container_image = "gcr.io/${var.project_id}/github.com/google/exposure-notifications-verification-server/composer:initial"

  # Create a container image for the composer environment
  container_image_pull_policy = "Always"

  # Create a container image for the composer environment
  container_image_size = "25"

  # Create a container image for the composer environment
  container_base_images = ["gcr.io/${var.project_id}/github.com/google/exposure-notifications-verification-server/composer:initial"]

  # Create a container image for the composer environment
  container_base_images_pull_policy = "Always"

  # Create a container image for the composer environment
  container_base_images_size = "25"

  # Create a container image for the composer environment
  container_image_size_pull_policy = "Always"

  # Create a container image for the composer environment
  container_base_images_size_pull_policy = "Always"

  # Create a container image for the composer environment
  container_image_size_base_images = "25"

  # Create a container image for the composer environment
  container_base_images_size_base_images_pull_policy = "Always"

  # Create a container image for the composer environment
  container_image_size_base_images_size = "25"

  # Create a container image for the composer environment
  container_base_images_size_base_images_pull_policy = "Always"

  # Create a container image for the composer environment
  container_base_images_size_base_images_size_pull_policy = "Always"

  # Create a container image for the composer environment
  container_base_images_size_base_images_size_pull_policy = "Always"

  # Create a container image for the composer environment
  container_image_size_push_policy = "Always"

  # Create a container image for the composer environment
  container_base_images_size_push_policy = "Always"

  # Create a container image for the composer environment
  container_image_size_push_policy = "Always"

  # Create a container image for the composer environment
  container_base_images_size_push_policy = "Always"

  # Create a container image for the composer environment
  container_image_size_base_images_size = "25"

  # Create a container image for the composer environment
  container_base_images_size_base_images = "25"

  # Create a container image for the composer environment
  container_image_size_push_base_images = "25"

  # Create a container image for the composer environment
  container_image_size_push_base_images_size = "25"

  # Create a container image for the composer environment
  container_image_size_base_images_
}
