terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with only region set to europe north1
provider "google" {
  region = "europe-west1"
}

# create google notebooks enviroment, use container image located in repository gcr.io/deeplearning-platform-release/base-cpu. Use name notebooks-environment and location europe west4 amd64-stable
resource "google_container_instance" "name_0" {
  name = "my-container-instance"
  machine_type = "e2-micro"
  zone = "europe-west4-a"
  boot_disk {
    initialize_params {
      image = "deeplearning-platform-release/base-cpu"
    }
  }

  network_interface {
    network = "default" 
    access_config {
    }
  }
}

