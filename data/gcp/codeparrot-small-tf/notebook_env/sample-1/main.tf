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
# notebooks_instance_name is not available in terraform.tfvars
resource "google_notebooks_instance" "name_0" {
  name = "my-instance-${random_suffix}"
  location = "europe"
  machine_type = "europe-west4"
  machine_version = "latest"

  # Notebooks instance machine type
  machine_image {
    project = "deeplearning-platform-release"
    image_family = "tf-latest-cpu"
  }

  # Notebooks instance disk size
  disk {
    # Add an empty block to make the disk empty
    # https://cloud.google.com/compute/docs/disks/creating-a-snapshot
    type = "pd-standard"
    scratch = true
  }

  # Notebooks instance network
  network {
    network = "default"
    access_config {
    }
  }
}

