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

# create composer environment in region us-central1. Create software config and use image composer-2.0.0-preview.3-airflow-2.1.2 (Ubuntu Server 16.04 LTS, SDD Volume Type)
resource "google_composer_environment" "name_0" {
  name     = "composer-environment"
  region   = "us-central1"
  project  = var.project_id
  composer = "gcr.io/${var.composer_version}"

  # Add a network interface to the instance
  network_interface {
    subnetwork = "default"
  }

  # Add a fixed IP address to the instance
  ip_address = "10.0.0.8"

  # Add a network interface to the instance
  network_interface {
    subnetwork = "default"
  }

  # Create a new network interface to access the instance
  network_interface {
    access_config {
      // Ephemeral IP
    }
  }

  # Add a security group to the instance
  security_groups = [
    "foo",
  ]

  # Create a new network interface access the instance
  network_interface {
    network = "default"
  }

  # Set the default network interface to be targeted
  network_interface {
    network = "default"

    # Set the default security group to be targeted
    # (if the default security group is not set, the default network interface will be targeted)
    # (if the default security group is set, the default network interface will be targeted)
  }

  # Create a new network interface access the instance
  network_interface {
    network = "default"

    # Set the default security group to be targeted
    # (if the default security group is not set, the default network interface will be targeted)
    # (if the default security group is set, the default network interface will be targeted)
  }

  # Create a new network interface access the instance
  network_interface {
    network = "default"

    # Set the default security group to be targeted
    # (if the default security group is not set, the default network interface will be targeted)
    # (if the default security group is set, the default network interface will be targeted)
  }

  # Create a new network interface access the instance
  network_interface {
    network = "default"

    # Set the default security group to be targeted
    # (if the default security group is not set, the default network interface will be targeted)
    # (if the default security group is set, the default network interface will be targeted)
  }

  # Create a new network interface access the instance
  network_interface {
    network = "default"

    # Set the default security group to be targeted
    # (if the default security group is not set, the default network interface will be targeted)
    # (if the default security group is set, the default network interface will be targeted)
  }

  # Create a new network interface access the instance
  network_interface {
    network = "default"

    # Set the default security group to be targeted
    # (if the default security group is not set, the default network interface will be targeted)
    # (if the default security group is set, the default network interface will be targeted)
  }

  # Create a new network interface access the instance
  network_interface {
    network = "default"

    # Set the default security group to be targeted
    # (if the default security group is not set, the default network interface will be targeted)
    # (if the default security group is set, the default network interface will be targeted)
  }
}

