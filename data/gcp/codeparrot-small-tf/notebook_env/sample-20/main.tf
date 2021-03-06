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
  initial_node_count = 1

  # Notebooks instance machine type, see:
  # https://cloud.google.com/kubernetes-engine/docs/how-to/multi-machine-types
  machine_image {
    project = "deeplearning-platform-release"
    image_family = "europe-west4"
  }

  # Notebooks instance disk size, see:
  # https://cloud.google.com/kubernetes-engine/docs/how-to/multi-machine-types
  disk {
    # Add a default user disk size.
    # https://cloud.google.com/kubernetes-engine/docs/how-to/multi-machine-types#disk_size
    size = "100"
  }

  # Notebooks instance boot disk size, see:
  # https://cloud.google.com/kubernetes-engine/docs/how-to/multi-machine-types#boot_disk_size
  boot_disk {
    initialize_params {
      image = "projects/deeplearning-platform-release/global/images/family/deeplearning-platform-release-2016-03-0"
    }
  }

  network_interface {
    network = "default"
    access_config {
    }
  }
}

