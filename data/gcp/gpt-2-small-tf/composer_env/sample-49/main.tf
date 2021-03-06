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

# create composer environment in region us-central1. Create software config and use image composer-2.0.0-preview.3-airflow-2.1.2.3.3.4.
resource "google_compute_image" "name_0" {
  name = "my-image"
  provider = google-beta
  project = var.project_id
  region = var.region
  # use image composer-2.0.0-preview.3-airflow-2.1.2.3.4.
  # use image composer-2.0.0-preview.3-airflow-2.1.2.3.4.
  # use image composer-2.0.0-preview.3-airflow-2.1.2.3.4.
  # use image composer-2.0.0-preview.3-airflow-2.1.2.3.4.
  # use image composer-2.0.0-preview.3-airflow-2.1.2.3.4.
  # use image composer-2.0.0-preview.3-airflow-2.1.2.3.4.
  # use image composer-2.0.0-preview.3-airflow-2.1.2.3.4.
  # use image composer-2.0.0-preview.3-airflow-2.1.2.3.4.
  # use image composer-2.0.0-preview.3-airflow-2.1.2.3.4.
  # use image composer-2.0.0-preview.3-airflow-2.1.2.3.4.
  # use image composer-2.0.0-preview.3-airflow-2.1.2.3.4.
  # use image composer-2.0.0-preview.3-airflow-2.1.2.3.4.
  # use image composer-2.0.0-preview.3-airflow-2.1.2.3.4.
  # use image composer-2.0.0-preview.3-airflow-2.1.2.3.4.
  # use image composer-2.0.0-preview.3-airflow-2.1.2.3.4.
  # use image composer-2.0.0-preview.3-airflow-2.1.2.3.4.
  # use image composer-2.0.0-preview.3-airflow-2.1.2.3.4.
  # use image composer-2.0.0-preview.3-airflow-2.1.2.3.4.
  # use image composer-2.0.0-preview.3-airflow-2.1.2.3.4.
  # use image composer-2.0.0-preview.3-airflow-2.1.2.3.4.
  # use image composer-2.0.0-preview.3-airflow-2.1.2.3.4
}

