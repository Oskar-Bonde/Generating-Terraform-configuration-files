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
  project     = "my-project"
  region      = "us-central1"
}

# create google notebooks enviroment
resource "google_notebooks_environment" "name_0" {
  name     = "my-notebook-env"
  project  = "my-project"
  region   = "us-central1"
  instance = {
    machine_type = "n1-standard-4"
    boot_disk_size_gb = 100
    boot_disk_type = "pd-standard"
  }
}

