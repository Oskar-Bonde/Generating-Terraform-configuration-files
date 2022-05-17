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
  name     = "composer-env-${local.name_suffix}"
  region  = "us-central1"

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

  # Add a fixed IP
  ip_address = "10.0.0.8"

  # Add a network interface to allow SSH access only from the instance
  network_interface {
    network = "default"
  }

  # Add a fixed IP
  ip_address = "10.0.0.7"

  # Add a network interface to allow SSH access only from the instance
  network_interface {
    network = "default"
  }

  # Add a fixed IP
  ip_address = "10.0.0.6"

  # Add a network interface to allow SSH access only from the instance
  network_interface {
    network = "default"
  }

  # Add a fixed IP
  ip_address = "10.0.0.5"

  # Add a network interface to allow SSH access only from the instance
  network_interface {
    network = "default"
  }

  # Add a fixed IP
  ip_address = "10.0.0.4"

  # Add a network interface to allow SSH access only from the instance
  network_interface {
    network = "default"
  }

  # Add a fixed IP
  ip_address = "10.0.0.3"

  # Add a network interface to allow SSH access only from the instance
  network_interface {
    network = "default"
  }

  # Add a fixed IP
  ip_address = "10.0.0.2"

  # Add a network interface to allow SSH access only from the instance
  network_interface {
    network = "default"
  }

  # Add a fixed IP
  ip_address = "10.0.0.1"

  # Add a network interface to allow SSH access only from the instance
  network_interface {
    network = "default"
  }

  # Add a fixed IP
  ip_address = "10.0.0.0"

  # Add a network interface to allow SSH access only from the instance
  network_interface {
    network = "default"
  }

  # Add a fixed IP
  ip_address = "10.0.0.10"

  # Add a network interface to allow SSH access only from the instance
  network_interface {
    network = "default"
  }

  # Add a fixed IP
  ip_address = "10.0.0.11"

  # Add a network interface to allow SSH access only from the instance
  network_interface {
    network = "default"
  }

  # Add a fixed IP
  ip_address = "10.0.0.12"

  # Add a network interface to allow SSH access only from the instance
  network_interface {
    network = "default"
  }

  # Add a fixed IP
  ip_address = "10.0.0.13"

  # Add a network interface to allow SSH access only from the instance
  network_interface {
    network = "default"
  }

  # Add a fixed IP
  ip_address = "10.0.0.14"

  # Add a network interface to allow SSH access only from
}

