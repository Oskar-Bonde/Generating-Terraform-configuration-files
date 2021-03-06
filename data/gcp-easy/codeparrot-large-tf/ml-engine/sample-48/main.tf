terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
provider "google" {
}

# ml engine model resource
resource "google_ml_engine_model" "name_0" {
  name = "my-model"
  region = "us-central1"
  description = "my model"
  tags = ["foo", "bar"]
}

