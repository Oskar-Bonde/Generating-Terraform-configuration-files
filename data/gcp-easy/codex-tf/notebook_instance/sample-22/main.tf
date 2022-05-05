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
resource "google_notebooks_instance" "name_0" {
  name         = var.name
  machine_type = var.machine_type
  zone         = var.zone
  network      = var.network
  subnetwork   = var.subnetwork
  service_account = {
    scopes = var.scopes
  }
}

