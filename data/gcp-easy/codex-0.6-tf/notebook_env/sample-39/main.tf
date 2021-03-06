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
  name = "my-environment"
  project = var.project
  region = var.region
  config {
    machine_type = "n1-standard-4"
    image_version = "1.0.0"
    container_image = "gcr.io/deeplearning-platform-release/tf2-cpu"
    accelerator_config {
      type = "NVIDIA_TESLA_K80"
      count = 1
    }
  }
}

