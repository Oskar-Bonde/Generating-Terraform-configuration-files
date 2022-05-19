terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
provider "google" {
  credentials = file("account.json")
  project     = "my-project"
  region      = "us-central1"
}

# create google notebooks enviroment
resource "google_notebooks_environment" "name_0" {
  name          = "my-notebooks-env"
  project       = "my-project"
  region        = "us-central1"
  machine_type  = "n1-standard-4"
  image_version = "1.0.0"
}

