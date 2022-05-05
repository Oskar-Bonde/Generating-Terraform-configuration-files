terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block 
provider "google" {
  credentials = file("${path.module}/account.json")
  project     = var.project
  region      = var.region
}

# bigquery dataset resource
resource "google_bigquery_dataset" "name_0" {
  dataset_id = var.dataset_id
  location   = var.location
}

