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

# create composer environment in region us-central1. Create software config and use image composer-2.0.0-preview.3-airflow-2.1.2resource.yaml
data "template_file" "name_0" {
  template = file("${path.module}/templates/composer-2.0.0-preview.3-airflow-2.1.2resource.yaml")

  vars = {
    region = var.region
    composer-2.0.0-preview = file("${path.module}/templates/composer-2.0.0-preview.3-airflow-2.1.2resource.yaml")
  }
}

