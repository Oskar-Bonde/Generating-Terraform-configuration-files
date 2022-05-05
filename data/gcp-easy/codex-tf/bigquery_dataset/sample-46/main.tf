terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block 
provider "google" {
  credentials = file("${path.module}/service-account.json")
  project     = var.project
  region      = var.region
}

# bigquery dataset resource
resource "google_bigquery_dataset" "name_0" {
  dataset_id = var.dataset_id
  friendly_name = var.friendly_name
  description = var.description
  location = var.location
}

