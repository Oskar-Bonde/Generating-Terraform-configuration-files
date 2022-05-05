terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
provider "google" {
  project = var.project
  region  = var.region
}

# create google notebooks enviroment
resource "google_notebooks_environment" "name_0" {
  name     = "my-notebook-env"
  project  = var.project
  region   = var.region
  machine_type = "n1-standard-4"
  image_version = "1.0.0-deb9"
  network = "default"
  service_account = "default"
}

