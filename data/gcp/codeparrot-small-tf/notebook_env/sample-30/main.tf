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
  machine_type = "e2-micro"
  location = "europe-west4"
  initial_node_count = 1
  machine_image {
    repository = "gcr.io/deeplearning-platform-release/base-cpu"
    name = "deeplearning-platform-release/base-cpu"
  }
  initial_node_count = 1
  network_interface {
    network = "default"
    access_config {
    }
  }
}

