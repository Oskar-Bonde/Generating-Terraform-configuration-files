terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with default settings
provider "google" {
  project = "my-project"
  region  = "us-central1"
}

# create a notebook instance in us west 1. Use machine type e2 medium and vm image from deeplearning-platform-release and image familiy tf-latest-cpu
resource "google_notebooks_instance" "name_0" {
  name = "my-instance"
  description = "my-instance"
  machine_type = "n1-standard-2"
  vm_image = "projects/deeplearning-platform-release/global/images/family/tf-latest-cpu"
  boot_disk_size_gb = "20"
  labels = {
    my-label = "my-label-value"
  }
}

