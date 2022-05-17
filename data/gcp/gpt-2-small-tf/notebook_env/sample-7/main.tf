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

# create google notebooks enviroment, use container image located in repository gcr.io/deeplearning-platform-release/base-cpu. Use name notebooks-environment and location europe west4 a-z
resource "google_notebooks_enviroment" "name_0" {
  name = "notebooks-environment"
  project = var.project_id
  region = var.region
  zone = var.zone
  labels = {
    "notebooks-environment" = "notebooks-environment"
  }
}

