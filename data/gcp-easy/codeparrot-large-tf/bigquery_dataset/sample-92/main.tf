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
  dataset_id                  = "default"
  friendly_name               = "my-bigquery-dataset"
  description                 = "This is a test description"
  location                    = "US"
}

