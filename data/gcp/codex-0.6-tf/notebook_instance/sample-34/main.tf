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

# create a notebook instance in location us west 1 a. Use machine type e2 medium and vm image from deeplearning-platform-release and image familiy tf-latest-cpu
resource "google_ai_platform_notebook_instance" "name_0" {
  name = "notebook-instance"
  zone = "us-west1-a"
  machine_type = "e2-medium"
  vm_image {
    project = "deeplearning-platform-release"
    image_family = "tf-latest-cpu"
  }
}

