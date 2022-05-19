terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with only region set to europe north1
provider "google" {
  region = "europe-north1"
}

# create google notebooks enviroment, use container image located in repository gcr.io/deeplearning-platform-release/base-cpu. Use name notebooks-environment and location europe west4 a
resource "google_notebooks_environment" "name_0" {
  name     = "notebooks-environment"
  location = "europe-west4-a"
  instance_config {
    machine_type = "n1-standard-4"
    container_image = "gcr.io/deeplearning-platform-release/base-cpu"
  }
}

