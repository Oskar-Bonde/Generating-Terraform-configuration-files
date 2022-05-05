terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
provider "google" {
  credentials = file("${path.module}/account.json")
  project     = var.project
  region      = var.region
}

# create google notebooks enviroment
resource "google_notebooks_environment" "name_0" {
  name = var.name
  zone = var.zone
  config {
    image_version = var.image_version
    machine_type  = var.machine_type
    network       = var.network
    subnetwork    = var.subnetwork
  }
}

