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
  description = "Test notebook instance"
  machine_type = "n1-standard-2"
  vm_image = "projects/deeplearning-platform-release/global/images/family/tf-latest-cpu"
  region = "us-west1"
  boot_disk_size_gb = 10
  labels = {
    env = "test"
  }
}
