terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block 
provider "google" {
  credentials = file("${path.module}/../../credentials.json")
  project     = var.project
  region      = var.region
}

# create composer environment in region us-central1
resource "google_composer_environment" "name_0" {
  name = var.name
  config {
    node_config {
      machine_type = var.machine_type
      disk_size_gb = var.disk_size_gb
      network      = var.network
      subnetwork   = var.subnetwork
    }
    software_config {
      python_version = var.python_version
    }
  }
}

