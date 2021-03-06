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

# create a notebook instance 
resource "google_ai_platform_notebook_instance" "name_0" {
  name         = "my-notebook-instance"
  zone         = var.zone
  machine_type = "n1-standard-4"
  network      = "default"
  service_account = "default"
  container {
    image = "gcr.io/deeplearning-platform-release/tf2-cpu.2-0:m39"
  }
}

