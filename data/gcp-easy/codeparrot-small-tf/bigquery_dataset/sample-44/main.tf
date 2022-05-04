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
  dataset_id                  = "my-dataset-${random_suffix}"
  friendly_name               = "my-dataset-${random_suffix}"
  description                 = "My dataset for Terraform"
  location                    = "US"
  delete_contents_on_destroy  = false
}

