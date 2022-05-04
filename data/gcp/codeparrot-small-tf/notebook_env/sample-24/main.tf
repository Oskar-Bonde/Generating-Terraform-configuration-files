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

# create google notebooks enviroment, use container image located in repository gcr.io/deeplearning-platform-release/base-cpu. Use name notebooks-environment and location europe west4 a
# notebooks-environment block to create a new instance with the same name and location europe west4
resource "google_notebooks_instance" "name_0" {
  name = "my-instance-${random_suffix}"
  location = "europe-west4"
  machine_type = "europe-west4"

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

