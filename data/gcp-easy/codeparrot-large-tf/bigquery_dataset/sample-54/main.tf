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
  dataset_id = "dataset-name"
  friendly_name = "test"
  description = "test"
  location = "US"
}

