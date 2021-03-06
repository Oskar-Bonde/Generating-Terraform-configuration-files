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
  name         = var.name
  project      = var.project
  region       = var.region
  machine_type = var.machine_type
  network      = var.network
  subnetwork   = var.subnetwork
  service_account = var.service_account
  container_image_uri = var.container_image_uri
  install_gpu_driver = var.install_gpu_driver
  accelerator_config {
    type = var.accelerator_type
    count = var.accelerator_count
  }
}

