terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block 
provider "google" {
  credentials = file("account.json")
  project     = "my-project"
  region      = "us-central1"
}

# ml engine model resource
resource "google_ml_engine_model" "name_0" {
  name         = "my_model"
  region       = "us-central1"
  description  = "My model"
  online_prediction_logging = true
}

