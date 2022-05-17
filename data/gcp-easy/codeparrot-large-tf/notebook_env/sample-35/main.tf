terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
provider "google" {
}

# create google notebooks enviroment variables
resource "google_notebooks_instance" "name_0" {
  name = "my-notebooks-instance"
  machine_type = "n1-standard-1"
  location = "us-central1"
  machine_image {
    source = "debian-cloud/debian-9"
  }
  network_interface {
    network = "default"    
    access_config {
    }
  }
}

