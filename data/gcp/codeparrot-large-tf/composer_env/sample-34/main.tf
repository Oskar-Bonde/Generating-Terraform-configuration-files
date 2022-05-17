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

# create composer environment in region us-central1. Create software config and use image composer-2.0.0-preview.3-airflow-2.1.2 (LTS)
resource "google_composer_environment" "name_0" {
  name     = "env-${var.env_name}"
  region   = "us-central1"
  project  = var.project_id
  composer = google_composer_environment.composer.id

  # Add a default node pool with default service account
  node_count = 1
  node_config {
    machine_type = "e2-medium"
    image_type   = "COS"
    disk_size_gb = 100
    oauth_scopes = [
      "https://www.googleapis.com/auth/compute",
      "https://www.googleapis.com/auth/devstorage.read_only",
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring",
    ]
  }
}

