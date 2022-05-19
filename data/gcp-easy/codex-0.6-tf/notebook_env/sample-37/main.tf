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
  instance = {
    machine_type = "n1-standard-4"
    boot_disk    = {
      initialize_params = {
        image = "projects/deeplearning-platform-release/global/images/tf2-1-0-cu101-notebooks-20200707"
      }
    }
  }
}

