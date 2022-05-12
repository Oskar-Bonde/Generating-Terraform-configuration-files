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
  name     = "composer-env-${random_suffix}"
  region   = "us-central1"
  project  = var.project_id
  composer = google_composer_environment.name_0.id

  # Set machine type
  config_machine_type {
    zone = "us-central1-a"
  }

  # Set network interface
  network_interface {
    subnetwork = google_compute_subnetwork.subnet.id
    access_config {
      # add external ip to fetch packages
    }
  }

  # Set additional instance metadata
  metadata_startup_script = "echo 'hello from composer' > composer.json"

  # Create a VM instance
  # Specify the image and size
  # Specify a network interface
  network_interface {
    network = google_compute_network.vpc.id
    subnetwork = google_compute_subnetwork.subnet.id
    access_config {
      # add external ip to fetch packages
    }
  }

  # Create a VM instance with a network interface
  # Specify the image and size
  # Specify a network interface
  network_interface {
    subnetwork = google_compute_subnetwork.subnet.id
    access_config {
      # add external ip to fetch packages
    }
  }

  # Create a VM instance with a network interface
  # Specify the image and size
  # Specify a network interface
  network_interface {
    subnetwork = google_compute_subnetwork.subnet.id
    access_config {
      # add external ip to fetch packages
    }
  }

  # Create a VM instance with a network interface
  # Specify the image and size
  # Specify a network interface
  network_interface {
    subnetwork = google_compute_subnetwork.subnet.id
    access_config {
      # add external ip to fetch packages
    }
  }

  # Create a VM instance with a network interface
  # Specify the image and size
  # Specify a network interface
  network_interface {
    subnetwork = google_compute_subnetwork.subnet.id
    access_config {
      # add external ip to fetch packages
    }
  }

  # Create a VM instance with a network interface
  # Specify the image and size
  # Specify a network interface
  network_interface {
    subnetwork = google_compute_subnetwork.subnet.id
    access_config {
      # add external ip to fetch packages
    }
  }

  # Create a VM instance with a network interface
  # Specify the image and size
  # Specify a network interface
  network_interface {
    subnetwork = google_compute_subnetwork.subnet.id
    access_config {
      # add external ip to fetch packages
    }
  }

  # Create a VM instance with a network interface
  # Specify the image and size
  # Specify a network interface
  network_interface {
    subnetwork = google_compute_subnetwork.subnet.id
    access_config {
      # add external ip to fetch packages
    }
  }

  # Create a VM instance with a network interface
  # Specify the image and size
  # Specify a network interface
  network_interface {
    subnetwork = google_compute_subnetwork.subnet.id
    access_config {
      # add external ip to fetch packages
    }
  }

  # Create a VM instance with a network interface
  # Specify the image and size
  # Specify a network interface
}

