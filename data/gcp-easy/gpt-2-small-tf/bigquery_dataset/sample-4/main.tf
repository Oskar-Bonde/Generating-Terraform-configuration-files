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

# bigquery dataset resource
resource "google_bigquery_dataset" "name_0" {
  dataset_id   = "dataset"
  project      = var.project_id
  location     = var.location
  description = "Dataset for the Google Cloud"
}

