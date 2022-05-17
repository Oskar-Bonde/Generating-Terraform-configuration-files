terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
provider "google-beta" {
}

# bigquery dataset resource
resource "google_bigquery_dataset" "name_0" {
  dataset_id = "dataset-${local.name_suffix}"
  project     = var.project_id
  location    = var.location
}

