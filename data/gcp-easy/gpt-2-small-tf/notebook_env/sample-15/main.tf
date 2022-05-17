terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
provider "google" {
}

# create google notebooks enviroment#
resource "google_notebooks_enviroment" "name_0" {
  name = "notebooks-enviroment"
  enviroment_id = "enviroment"
  enviroment_region = "us-central1"
}

