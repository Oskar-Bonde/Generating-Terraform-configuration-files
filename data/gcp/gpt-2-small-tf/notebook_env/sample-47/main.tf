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

# create google notebooks enviroment, use container image located in repository gcr.io/deeplearning-platform-release/base-cpu. Use name notebooks-environment and location europe west4 a.k.a. europe-west4-a
resource "google_notebooks_enviroment" "name_0" {
  name = "my-notebooks-environment"
  region = "europe-west4"
  project = "deeplearning-platform-release"
  notebooks = [google_notebooks_enviroment.name_0.name]
  labels = {
    "my-label" = "my-label"
  }
}

