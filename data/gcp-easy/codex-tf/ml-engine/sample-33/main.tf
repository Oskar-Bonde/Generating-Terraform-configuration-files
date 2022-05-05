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

# ml engine model resource
resource "google_ml_engine_model" "name_0" {
  name = var.model_name
}

