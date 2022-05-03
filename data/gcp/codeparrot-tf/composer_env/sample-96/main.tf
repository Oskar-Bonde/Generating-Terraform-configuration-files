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

# create composer environment in region us-central1. Create software config and use image composer-2.0.0-preview.3-airflow-2.1.2
resource "google_composer_environment" "name_0" {
  name     = "composer-environment-${random_suffix}"
  region   = "us-central1"

  config {
    node_config {
      machine_type = "e2-micro"

      # Add a dependency on the image-composer-2.0.0-preview repo
      node_requirements {
        image = "gcr.io/qwiklabs-resources/grafeas/node-experience/node-experience:latest"
        config_path = "image-composer-2.0.0-preview/node-experience/config.yaml"
      }
    }
  }

  depends_on = [google_project_service.composer]
}

