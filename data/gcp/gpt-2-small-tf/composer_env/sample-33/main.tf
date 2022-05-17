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

# create composer environment in region us-central1. Create software config and use image composer-2.0.0-preview.3-airflow-2.1.2.3-linux-amd64.
resource "google_compute_image" "name_0" {
  name = "my-image"
  project = var.project_id
  region = var.region
  # use image-specific image
  provider = google-beta
  version = "~> 2.1"

  # use image-specific image
  name = "my-image-2"

  # use image-specific image
  image_version = "~> 2.1"

  # use image-specific image
  network_interface {
    network = "default"    
  }
}

