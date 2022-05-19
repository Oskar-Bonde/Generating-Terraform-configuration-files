terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block 
provider "google" {
  credentials = file("credentials.json")
  project     = "my-project"
  region      = "us-central1"
}

# create a notebook instance 
resource "google_notebooks_instance" "name_0" {
  name     = "my-notebook"
  vm_image = "projects/deeplearning-platform-release/global/images/tf2-1-0-cpu"
  zone     = "us-central1-a"
}

