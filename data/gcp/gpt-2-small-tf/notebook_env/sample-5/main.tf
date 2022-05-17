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

# create google notebooks enviroment, use container image located in repository gcr.io/deeplearning-platform-release/base-cpu. Use name notebooks-environment and location europe west4 a2e
resource "google_notebooks_enviroment" "name_0" {
  name = "notebooks-environment"
  region = "europe-west1"
  project = "deeplearning-platform-release"
  region_id = "europe-west1"
  notebook_name = "notebooks-environment"
  region_id_suffix = "a2e-europe-west1-a2e-notebook-enviroment"
  notebook_region = "europe-west1"
  notebook_size = "512mb"
  notebook_type = "n1-standard-1"
  notebook_os_disk {
    name = "notebooks-environment"
    vhd_uri = "https://storage.googleapis.com/vhds/notebooks-environment"
  }
  os_disk {
    name = "notebooks-environment"
    vhd_uri = "https://storage.googleapis.com/vhds/notebooks-environment"
  }
  os_disk {
    name = "notebooks-environment"
    vhd_uri = "https://storage.googleapis.com/vhds/notebooks-environment"
  }
  os_network_interface {
    network = "default"    
  }
}

