terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block 
provider "google" {
  project = "my-project"
  region  = "us-central1"
}

# ml engine model resource
resource "google_ml_engine_model" "name_0" {
  name     = "my_model"
  project  = "my-project"
  region   = "us-central1"
  runtime_version = "1.10"
  framework = "TENSORFLOW"
}

