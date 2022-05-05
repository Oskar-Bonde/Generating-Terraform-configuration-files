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

# create google notebooks enviroment
resource "google_notebooks_environment" "name_0" {
  name = var.name
  zone = var.zone
  machine_type = var.machine_type
  disk_size_gb = var.disk_size_gb
  image_version = var.image_version
  network = var.network
  subnetwork = var.subnetwork
  service_account = var.service_account
  tags = var.tags
}

