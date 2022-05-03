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

# create google notebooks enviroment, use container image located in repository gcr.io/deeplearning-platform-release/base-cpu. Use name notebooks-environment and location europe west4 apex
resource "google_notebooks_instance" "name_0" {
  name = "notebooks-instance-${random_suffix}"
  machine_type = "europe-west4-a"
  location = "europe-west4-a"
  machine_image {
    source = "gcr.io/deeplearning-platform-release/base-cpu"
  }
  machine_image {
    family = "europe-west4-a"
    image = "gcr.io/projects/deeplearning-platform-release/images/family/europe-west4/a"
  }
  machine_network_interface {
    network = "default"
    access_config {
    }
  }
}

