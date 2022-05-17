terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with only region set to europe north1
provider "google" {
}

# create google notebooks enviroment, use container image located in repository gcr.io/deeplearning-platform-release/base-cpu. Use name notebooks-environment and location europe west4 a-z-a-z-c
resource "google_notebooks_enviroment" "name_0" {
  name = "notebooks-environment"
  location = "europe-west4"
  project = "deeplearning-platform-release"
  region = "europe-west4"
  notebook_name = "notebooks-environment"
  labels = {
    "notebook-environment" = "my-vm"
  }
}

