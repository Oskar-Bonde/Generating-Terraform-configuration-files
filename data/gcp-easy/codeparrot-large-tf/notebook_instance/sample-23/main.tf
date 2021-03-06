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

# create a notebook instance 
resource "google_notebooks_instance" "name_0" {
  name = "my-notebook-instance-%%{random_suffix}"
  machine_type = "f1-micro"

  notebook {
    image_id = "ubuntu-os-cloud/ubuntu-1404-trusty-v20160602"
  }

  network_interface {
    network = "default"    
    access_config {
    }
  }
}

