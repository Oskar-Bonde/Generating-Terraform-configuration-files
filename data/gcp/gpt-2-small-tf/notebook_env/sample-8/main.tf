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

# create google notebooks enviroment, use container image located in repository gcr.io/deeplearning-platform-release/base-cpu. Use name notebooks-environment and location europe west4 a.k.a. google-notebooks-enviroment
# use google-notebooks-enviroment-name-prefix to create a new notebook
resource "google_notebooks_enviroment" "name_0" {
  name = "my-notebooks-enviroment"
  region = "europe-west1"
  project = "my-project"
  notebooks = [google_notebooks_enviroment.name_0.name]
}

