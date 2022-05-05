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

# create a notebook instance 
resource "google_notebooks_instance" "name_0" {
  name         = "my-notebook-instance"
  machine_type = "n1-standard-4"
  zone         = "us-central1-a"
  disk_size_gb = 50
  network      = "default"
  service_account = {
    scopes = [
      "https://www.googleapis.com/auth/cloud-platform",
    ]
  }
}

