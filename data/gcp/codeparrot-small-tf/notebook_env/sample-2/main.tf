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

# create google notebooks enviroment, use container image located in repository gcr.io/deeplearning-platform-release/base-cpu. Use name notebooks-environment and location europe west4 amd64-stable
resource "google_notebooks_instance" "name_0" {
  name = "my-instance-${random_suffix}"
  location = "europe-west4"
  machine_type = "e2-micro"
  initial_node_count = 1

  # Notebooks instance machine type, can be set to pd-standard (for PD HDD) or pd-ssd (for PD SSD)
  machine_image = "projects/deeplearning-platform-release/release/release/v2.13.0/ubuntu-os-cloud/ubuntu-1604-lts"

  # Notebooks instance disk type, can be set to pd-standard (for PD HDD) or pd-ssd (for PD SSD)
  disk {
    # Local SSDs (SSD)
    scratch_disk {
      # Local SSDs (SSD)
      size = 100
      type = "pd-standard"
    }
  }

  # Notebooks instance network interface, can be set to network interface (for GCE)
  network_interface {
    network = "default"
    access_config {
    }
  }
}

