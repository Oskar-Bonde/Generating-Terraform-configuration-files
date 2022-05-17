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

# create google notebooks enviroment, use container image located in repository gcr.io/deeplearning-platform-release/base-cpu. Use name notebooks-environment and location europe west4 a list of region
# and zone names
resource "google_notebooks_enviroment" "name_0" {
  name = "notebooks-environment"
  region = "europe-west1"
  project = "deeplearning-platform-release"
  region  = "europe-west1"
  notebook_name = "notebooks-environment"
  labels = {
    "notebook-name" = "notebooks-environment"
  }
  labels = {
    "notebook-region" = "europe-west1"
  }
}

