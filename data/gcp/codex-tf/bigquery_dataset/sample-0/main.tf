terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with only region set to europe north1
provider "google" {
  region = "europe-north1"
}

# bigquery dataset resource. Use dataset id example_dataset, use location "EU" and set to expire after 1 hour. The reader role is assigned to hashicorp.com domain
resource "google_bigquery_dataset" "name_0" {
  dataset_id = "example_dataset"
  location   = "EU"
  expiration_time = "3600"
  access {
    role = "READER"
    domain = "hashicorp.com"
  }
}

