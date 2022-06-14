terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block 
provider "google" {
  region = "us-central1"
  project = "my-project"
}

# ml engine model resource
resource "google_ml_engine_model" "name_0" {
  name = "my_model"
  region = "us-central1"
}
