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

# create a notebook instance in us west 1. Use machine type e2 medium and vm image from deeplearning-platform-release and image familiy tf-latest-cpu
resource "google_notebooks_instance" "name_0" {
  name = "tf-test-%s"
  description = "tf-test-%s"
  machine_type = "n1-standard-2"
  zone = "us-west1-b"
  boot_disk_size_gb = 10
  labels = {
    env = "tf-test"
  }
  vm_image_project = "deeplearning-platform-release"
  vm_image_family = "tf-latest-cpu"
}

