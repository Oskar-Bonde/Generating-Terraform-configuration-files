terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with default settings
provider "google" {
  credentials = "${file("${path.module}/credentials.json")}"
  project     = "${var.project}"
}

# bigquery dataset resource. Use dataset id example_dataset, located in the EU and set to expire after 1 hour. The reader role is assigned to hashicorp.com domain
resource "google_bigquery_dataset" "name_0" {
  dataset_id = "example_dataset"
  location = "EU"
  expires = "1h"
  access {
    role = "READER"
    domain = "hashicorp.com"
  }
}

