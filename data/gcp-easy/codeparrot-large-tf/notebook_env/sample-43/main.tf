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

# create google notebooks enviroment
resource "google_notebooks_instance" "name_0" {
  name = "my-notebooks-instance"
  location = "us-central1"
  machine_type = "n1-standard-1"
  tags = ["notebooks"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = "default"    
    access_config {
    }
  }
}

