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

# create a notebook instance in location us west 1 a. Use machine type e2 medium and vm image from deeplearning-platform-release and image familiy tf-latest-cpu.
resource "google_compute_instance" "name_0" {
  name = "my-notebook"
  machine_type = "e2-medium"
  zone = "europe-west1-b"
  tags = ["e2-medium","e2-micro","e2-standard","e2-windows-2016","e2-windows-2017","e2-windows-2019","e2-windows-2018","e2-windows-2019","e2-windows-2019","e2-windows-2019","e2-windows-2019","e2-windows-2019","e2-windows-2019","e2-windows-2019","e2-windows-2019","e2-windows-2019","e2-windows-2019","e2-windows-2019","e2-windows-2019","e2-windows-2019","e2-windows-2019","e2-windows-2019","e2-windows-2019","e2-windows-2019","e2-windows-2019","e2-windows-2019","e2-windows-2019","e2-windows-2019","e2-windows-2019","e2-windows-2019","e2-windows-2019","e2-windows-2019","e2-windows-2019","e2-windows-2019","e2-windows-2019","e2-windows-2019","e2-windows-2019","e2-windows-2019","e2-windows-2019","e2-windows-2019","e2-windows-2019","e2-windows-2019","e2-windows-2019","e2-windows-2019","e2-windows-2019","e2-windows-2019","e2-windows-2019","e2-windows-2019","e2-windows-2019","e2-windows-2019","e2-windows-2019","e2-windows-2019","e2-windows-2019","e2-windows-2019","e2-windows-2019","e2-windows-2019","e2-windows-2019","e2-windows-2019","e2-windows-2019","e2-windows-2019","e2-windows-2019","e2-windows-2019","e2-windows-2019","e2-windows-2019","e2-windows-2019","e2-windows-2019","e2-windows-2019","e2-windows-2019","e2-windows-2019","e2-windows-2019","e2-windows-2019","e2-windows-2019","e2-windows-2019","e2-windows-2019","e2-windows-2019","e2-windows-2019","e2-windows-2019","e2-windows-2019","e2-windows-2019","e2-windows-2019","e2-windows-2019","e2-windows-2019","e2-windows-2019","e2-windows-2019","e2-windows-2019","e2-windows-2019","e2-windows-2019","e2-windows-2019","e2-windows-2019","e2-windows-2019","e2-windows-2019","e2-windows-2019","e2-windows-2019","e2-windows-2019","e2-windows-2019","e2-windows-2019","e2-windows-2019","e2-windows-2019","e2-windows-2019","e2-windows-2019","e2-
}

