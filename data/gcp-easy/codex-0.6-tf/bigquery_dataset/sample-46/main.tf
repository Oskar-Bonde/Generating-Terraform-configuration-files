terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block 
provider "google" {
  project = var.project
  region  = var.region
  zone    = var.zone
}

# bigquery dataset resource
resource "google_bigquery_dataset" "name_0" {
  dataset_id = var.dataset_id
  location   = var.location
}

