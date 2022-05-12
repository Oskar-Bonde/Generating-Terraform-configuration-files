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
  dataset_id = "dataset-${random_suffix}"
  friendly_name = "test"
  description = "This is a test description"
  location = "US"
}

