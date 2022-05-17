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

# create composer environment in region us-central1
resource "google_composer_environment" "name_0" {
  name     = "env-${random_suffix}"
  region  = "us-central1"
  project = google_project.project.project_id

  composer_env {
    parameters = {
      input_topic = "my-topic"
      output_topic = "my-topic"
    }
  }
}

