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
  name     = var.name
  project  = var.project
  region   = var.region
  instance = {
    machine_type = var.machine_type
    boot_disk    = {
      initialize_params = {
        image = var.image
      }
    }
  }
}

