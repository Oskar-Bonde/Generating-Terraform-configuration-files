terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with only region set to europe north1
provider "google" {
}

# ml engine model resource. With default name and in europe west 4 regions
resource "google_ml_engine_model" "name_0" {
  name = "ml-engine-model"
  location = "europe-west4"
  description = "a description"
  default_version = "latest"
  labels = {
    my_model = "my_model"
  }
}

