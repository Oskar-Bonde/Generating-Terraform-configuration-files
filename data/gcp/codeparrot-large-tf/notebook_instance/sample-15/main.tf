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

# create a notebook instance in location us west 1 a. Use machine type e2 medium and vm image from deeplearning-platform-release and image familiy tf-latest-cpu
resource "google_notebooks_instance" "name_0" {
  name = "notebooks-instance"
  machine_type = "e2-medium"
  zone = "europe-west1-b"
  tags = ["notebook"]

  # create a network interface in a specific region, default to europe-west1-b
  network_interface {
    network = "default"

    access_config {
      // Ephemeral IP
    }
  }

  # create a zone in the same region as our instances
  zone = "europe-west1-b"
}

