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
  zone          = var.zone
  machine_type  = "n1-standard-4"
  network       = "default"
  subnetwork    = "default"
  service_account = {
    scopes = [
      "https://www.googleapis.com/auth/cloud-platform",
    ]
  }
}

