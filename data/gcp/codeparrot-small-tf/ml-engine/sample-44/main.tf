terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with only region set to europe north1
provider "google" {
  region = "europe-north1"
}

# ml engine model resource. With default name and in europe west 4 regions, the model is deployed in the region we are using
# https://console.cloud.google.com/ml/docs/concepts/ml-engine-model#create_model
resource "google_ml_engine_model" "name_0" {
  name = "my-ml-engine-model"
  location = "europe-west4"
  description = "a description"
  default_version = "latest"
  labels = {
    env = "dev"
  }
}

