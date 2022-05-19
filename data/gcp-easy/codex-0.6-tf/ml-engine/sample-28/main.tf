terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block 
provider "google" {
  credentials = file("${path.module}/credentials.json")
  project     = var.project
  region      = var.region
}

# ml engine model resource
resource "google_ml_engine_model" "name_0" {
  name     = var.model_name
  project  = var.project
  region   = var.region
  labels   = var.labels
}

