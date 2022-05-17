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
  name     = "composer-2.0.0-preview.3-airflow-2.1.2"
  region   = "us-central1"

  config {
    node_config {
      machine_type = "e2-micro"

      image = "debian-cloud/debian-9"
    }
  }

  # Add a network interface to allow SSH access only from the instance
  network_interface {
    network = "default"
  }

  # Create a container
  container_config {
    image = "debian-cloud/debian-9"
  }

  # Start the instance
  startup_script = "sudo apt-get update"

  # Start the instance with a command
  # Startup script will download the installer script and execute the script
  # This will download the installer script and execute the script
  # This will execute the script remotely
  # This will execute the script remotely
  # This will execute the script remotely
  # This will execute the script remotely
  # This will execute the script remotely
  # This will execute the script remotely
  # This will execute the script remotely
  # This will execute the script remotely
  # This will execute the script remotely
  # This will execute the script remotely
  # This will execute the script remotely
  # This will execute the script remotely
  # This will execute the script remotely
  # This will execute the script remotely
  # This will execute the script remotely
  # This will execute the script remotely
  # This will execute the script remotely
  # This will execute the script remotely
  # This will execute the script remotely
  # This will execute the script remotely
  # This will execute the script remotely
  # This will execute the script remotely
  # This will execute the script remotely
  # This will execute the script remotely
  # This will execute the script remotely
  # This will execute the script remotely
  # This will execute the script remotely
  # This will execute the script remotely
  # This will execute the script remotely
  # This will execute the script remotely
  # This will execute the script remotely
  # This will execute the script remotely
  # This will execute the script remotely
  # This will execute the script remotely
  # This will execute the script remotely
  # This will execute the script remotely
  # This will execute the script remotely
  # This will execute the script remotely
  # This will execute the script remotely
  # This will execute the script remotely
  # This will execute the script remotely
  # This will execute the script remotely
  # This will execute the script remotely
  # This will execute the script remotely
  # This will execute the script remotely
  # This will execute the script remotely
  # This will execute the script remotely
  # This will execute the script remotely
  # This will execute the script remotely
  # This will execute the script remotely
  # This will execute the script remotely
  # This will execute the script remotely
  # This will execute the script remotely
  # This will execute the script remotely
  # This will execute the script remotely
  # This will execute the script remotely
  # This will execute the script remotely
  # This will execute the script remotely
  # This will execute the script remotely
  # This will execute the script remotely
  # This will
}

