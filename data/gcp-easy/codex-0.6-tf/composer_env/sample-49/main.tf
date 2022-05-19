terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block 
provider "google" {
  credentials = file("${path.module}/credentials.json")
  project     = var.project
  region      = var.region
}

# create composer environment in region us-central1
resource "google_composer_environment" "name_0" {
  name = "composer-environment"
  region = var.region
  config {
    node_count = 1
    node_config {
      machine_type = "n1-standard-1"
      disk_size_gb = 10
      network = "default"
    }
  }
}

