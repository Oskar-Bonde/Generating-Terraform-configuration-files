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

# create composer environment in region us-central1. Create software config and use image composer-2.0.0-preview.3-airflow-2.1.2
resource "google_composer_environment" "name_0" {
  name     = "composer-environment"
  region   = "us-central1"
  project  = var.project_id
  composer = google_composer_environment.name_0.name

  # Set machine type, and enable all oauth scopes, and create a service account for the instance
  # created by the service account in the default project.
  # Possible values for machine_type are:
  #   "f1-micro"
  #   "e2-micro"
  machine_type = "e2-micro"

  # Set a default network interface to allow SSH access only from the VM
  network_interface {
    network = "default"
  }

  # Set a default network interface to allow RDP access only from the VM
  network_interface {
    network = "default"
  }

  # Set a default network interface to allow SSH access from the VM
  network_interface {
    network = "default"
  }

  # Set a default network interface to allow RDP access from the VM
  network_interface {
    network = "default"
  }

  # Set a default network interface to allow RDP access from the VM
  network_interface {
    network = "default"
  }

  # Set a default network interface to allow SSH access from the VM
  network_interface {
    network = "default"
  }

  # Set a default network interface to allow RDP access from the VM
  network_interface {
    network = "default"
  }

  # Set a default network interface to allow SSH access from the VM
  network_interface {
    network = "default"
  }

  # Set a default network interface to allow RDP access from the VM
  network_interface {
    network = "default"
  }

  # Set a default network interface to allow RDP access from the VM
  network_interface {
    network = "default"
  }

  # Set a default network interface to allow SSH access from the VM
  network_interface {
    network = "default"
  }

  # Set a default network interface to allow RDP access from the VM
  network_interface {
    network = "default"
  }

  # Set a default network interface to allow RDP access from the VM
  network_interface {
    network = "default"
  }

  # Set a default network interface to allow SSH access from the VM
  network_interface {
    network = "default"
  }

  # Set a default network interface to allow RDP access from the VM
  network_interface {
    network = "default"
  }

  # Set a default network interface to allow RDP access from the VM
  network_interface {
    network = "default"
  }

  # Set a default network interface to allow SSH access from the VM
  network_interface {
    network = "default"
  }

  # Set a default network interface to allow RDP access from the VM
  network_interface {
    network = "default"
  }

  # Set a default network interface to allow RDP access from the VM
  network_interface {
    network = "default"
  }

  # Set a default network interface to allow RDP access from the VM
  network_interface {
    network = "default"
  }

  # Set a default network interface to allow RDP access from the VM
  network_interface {
    network = "default"
  }

  # Set a default network interface to allow SSH access from the VM
  network_interface {
    network = "default"
  }

  # Set a default
}

