# Terraform block with google provider
terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block 
provider "google" {
  region = "europe-north1"
}

# bigquery dataset resource
resource "google_bigquery_dataset" "name_0" {
  dataset_id                  = "example_dataset"
  location                    = "EU"
  default_table_expiration_ms = 3600000

  access {
    role   = "READER"
    domain = "hashicorp.com"
  }
}
