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

# create google notebooks enviroment, use container image located in repository gcr.io/deeplearning-platform-release/base-cpu. Use name notebooks-environment and location europe west4 avariable.
resource "google_notebooks_instance" "name_0" {
  name = "my-instance-${random_suffix}"
  location = "europe"
  machine_type = "europe-west4"

  # Notebooks instance machine type
  machine_image {
    source_image_family = "ubuntu-os-cloud/ubuntu-1804-lts"
    disk_size_gb = "200"
    disk_type    = "pd-standard"
  }

  # Notebooks instance boot disk size
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

