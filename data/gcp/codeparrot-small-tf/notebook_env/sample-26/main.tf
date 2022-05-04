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

# create google notebooks enviroment, use container image located in repository gcr.io/deeplearning-platform-release/base-cpu. Use name notebooks-environment and location europe west4 a
# notebooks_environment block to create a new environment
resource "google_notebooks_environment" "name_0" {
  name = "environment"
  location = "europe"
  tier = "europe-west4"
  description = "Terraform notebooks environment"
  machine_type = "europe-west4"
  zone = "europe-west4-a"

  # Notebooks instance
  # Notebooks instance machine type
  machine_image {
    repository = "deeplearning-platform-release/base-cpu"
    name = "deeplearning-platform-release/base-cpu"
  }

  # Notebooks instance machine type
  machine_type = "europe-west4"
  # Notebooks instance network
  network = "default"
  # Notebooks instance disk size
  disk {
    # Notebooks instance disk type
    size = "100"
  }
}

