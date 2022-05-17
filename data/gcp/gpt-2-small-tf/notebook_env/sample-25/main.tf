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
# for notebooks enviroment
resource "google_notebooks_enviroment" "name_0" {
  name = "notebooks-environment"
  region = "europe-west4"
  project = "deeplearning-platform-release"
  notebooks_enviroment_id = google_notebooks_enviroment.name_0.id
}

