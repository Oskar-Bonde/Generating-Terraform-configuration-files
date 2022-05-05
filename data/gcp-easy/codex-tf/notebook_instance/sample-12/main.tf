terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block 
provider "google" {
  credentials = file("${path.module}/account.json")
  project     = "my-project"
  region      = "us-central1"
}

# create a notebook instance 
resource "google_notebooks_instance" "name_0" {
  name         = "my-notebook"
  machine_type = "n1-standard-4"
  zone         = "us-central1-a"
  container {
    image = "gcr.io/deeplearning-platform-release/tf2-cpu"
  }
}

