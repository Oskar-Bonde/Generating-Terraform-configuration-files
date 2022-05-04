terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with only region set to europe north1
provider "google" {
  region = "europe"
}

# create google notebooks enviroment, use container image located in repository gcr.io/deeplearning-platform-release/base-cpu. Use name notebooks-environment and location europe west4 a
# notebooks-environment block
resource "google_notebooks_instance" "name_0" {
  name = "my-instance-${random_suffix}"
  location = "europe"
  machine_type = "europe-west4"
  machine_image = "gcr.io/deeplearning-platform-release/base-cpu:latest"

  # install nginx and serve a simple web page
  disk {
    image = "gcr.io/deeplearning-platform-release/base-cpu:latest"
    auto_delete = true
  }

  network_interface {
    network = "default"
    access_config {
    }
  }
}

