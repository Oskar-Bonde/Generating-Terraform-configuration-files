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
  name     = "composer-environment-${random_suffix}"
  region   = "us-central1"
  project  = var.project_id
  composer = google_composer_environment.name_0.id

  # Add a default network interface to allow SSH access only from the host
  network_interface {
    subnetwork = "default"
  }

  # Add a default network interface to allow HTTP access from the host
  network_interface {
    subnetwork = "default"
  }

  # Create a new instance
  instance_template = google_compute_instance_template.vm_instance.id

  # Set the network interface's dynamic IP address
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }

  # Set the network interface's static IP address
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }

  # Set the network interface's dynamic IP address
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }

  # Set the network interface's static IP address
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }

  # Set the network interface's static IP address
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }

  # Set the network interface's static IP address
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }

  # Set the network interface's static IP address
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }

  # Set the network interface's static IP address
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }

  # Set the network interface's static IP address
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }

  # Set the network interface's static IP address
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }

  # Set the network interface's static IP address
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }

  # Set the network interface's static IP address
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }

  # Set the network interface's static IP address
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }

  # Set the network interface's static IP address
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }

  # Set the network interface's static IP address
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }

  # Set the network interface's static IP address
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }

  # Set the network interface's static IP address
  network_interface
}

