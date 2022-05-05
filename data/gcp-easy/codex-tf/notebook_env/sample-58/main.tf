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
  name          = "my-notebook-env"
  project       = var.project
  region        = var.region
  machine_type  = "n1-standard-4"
  disk_size_gb  = 100
  container_image_uri = "gcr.io/deeplearning-platform-release/tf2-cpu.2-0:m39"
  network = "default"
  subnetwork = "default"
}

