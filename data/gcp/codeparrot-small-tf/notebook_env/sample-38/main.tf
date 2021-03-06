terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with only region set to europe north1
provider "google" {
  region = "europe-west1"
}

# create google notebooks enviroment, use container image located in repository gcr.io/deeplearning-platform-release/base-cpu. Use name notebooks-environment and location europe west4 amd64-stable
resource "google_notebooks_instance" "name_0" {
  name = "my-instance-${random_suffix}"
  location = "europe-west4"
  machine_type = "e2-micro"
  # Notebooks instance machine type can be set from gcr.io/deeplearning-platform-release/base-cpu.
  # Notebooks instance machine type can be set from gcr.io/deeplearning-platform-release/base-e2-micro.
  # Notebooks instance machine type can be set from gcr.io/deeplearning-platform-release/base-e2-micro.
  # Notebooks instance machine type can be set from gcr.io/deeplearning-platform-release/base-e2-micro.
  # Notebooks instance machine type can be set from gcr.io/deeplearning-platform-release/base-e2-micro.
  # Notebooks instance machine type can be set from gcr.io/deeplearning-platform-release/base-e2-micro.
  # Notebooks instance machine type can be set from gcr.io/deeplearning-platform-release/base-e2-micro.
  # Notebooks instance machine type can be set from gcr.io/deeplearning-platform-release/base-e2-micro.
  # Notebooks instance machine type can be set from gcr.io/deeplearning-platform-release/base-e2-micro.
  # Notebooks instance machine type can be set from gcr.io/deeplearning-platform-release/base-e2-micro.
  # Notebooks instance machine type can be set from gcr.io/deeplearning-platform-release/base-e2-micro.
  # Notebooks instance machine type can be set from gcr.io/deeplearning-platform-release/base-e2-micro.
  # Notebooks instance machine type can be set from gcr.io/deeplearning-platform-release/base-e2-micro.
  # Notebooks instance machine type can be set from gcr.io/deeplearning-platform-release/base-e2-micro.
  # Notebooks instance machine type can be set from gcr.io/deeplearning-platform-release/base-e2-micro.
  # Notebooks instance machine type can be set from gcr.io/deeplearning-platform-release/base-e2-micro.
  # Notebooks instance machine type can be set from gcr.io/deeplearning-platform-release/base-e2-micro.
  # Notebooks instance machine type can be set from gcr.io/deeplearning-platform-release/base-e2-micro.
  # Notebooks instance machine type can be set from gcr.io/deeplearning-platform-release/base-e2-micro.
  # Notebooks instance machine type can be set from gcr.io/deeplearning-platform-release/base-e2-micro.
  # Notebooks instance machine type can be set from gcr.io/deeplearning-platform-release/base-e2-micro.
  # Notebooks instance machine type can be set from gcr.io/deeplearning-platform-release/base-e2-micro.
  # Notebooks instance machine type can be
}

