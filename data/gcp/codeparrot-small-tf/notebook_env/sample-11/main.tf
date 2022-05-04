terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with only region set to europe north1
provider "google" {
  region = "europe-north1"
}

# create google notebooks enviroment, use container image located in repository gcr.io/deeplearning-platform-release/base-cpu. Use name notebooks-environment and location europe west4 amazon
resource "google_notebooks_instance" "name_0" {
  name = "my-instance-${random_suffix}"
  location = "europe-west4"
  machine_type = "e2-micro"
  initial_node_count = 1

  # Notebooks instance machine type, can be set to pd-standard (for PD HDD) or pd-ssd (for PD SSD)
  machine_type = "pd-ssd"

  # Notebooks instance disk type, can be set to pd-standard (for PD HDD) or pd-ssd (for PD HDD)
  disk_size_gb = "50"

  # Notebooks instance disk type, can be set to pd-standard (for PD HDD) or pd-ssd (for PD HDD)
  disk_type = "pd-standard"

  # Notebooks instance disk type, can be set to pd-standard (for PD HDD) or pd-ssd (for PD HDD)
  machine_type = "pd-ssd"

  # Notebooks instance disk type, can be set to pd-standard (for PD HDD) or pd-ssd (for PD HDD)
  disk_size_gb = "50"

  # Notebooks instance disk type, can be set to pd-standard (for PD HDD) or pd-ssd (for PD HDD)
  disk_type = "pd-standard"

  # Notebooks instance disk type, can be set to pd-standard (for PD HDD) or pd-ssd (for PD HDD)
  machine_type = "pd-ssd"

  # Notebooks instance disk type, can be set to pd-standard (for PD HDD) or pd-ssd (for PD HDD)
  disk_size_gb = "50"

  # Notebooks instance disk type, can be set to pd-standard (for PD HDD) or pd-ssd (for PD HDD)
  disk_type = "pd-ssd"

  # Notebooks instance network interface, can be set to network-interfaces (for network interfaces)
  network_interface {
    network = "default"
    access_config {
    }
  }
}

