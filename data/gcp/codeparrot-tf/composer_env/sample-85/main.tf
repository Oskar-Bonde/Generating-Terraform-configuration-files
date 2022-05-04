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
  name     = "composer-environment-${random_suffix}"
  region   = "us-central1"
  project  = var.project_id
  composer = google_composer_environment.name_0.id

  # Create a container image for the composer environment
  image = "gcr.io/${var.composer_environment.id}/google-containers/ubuntu-os-cloud/ubuntu-1604-lts"

  # Create a container image for the composer environment
  container_image = "gcr.io/${var.composer_environment.id}/google-containers/ubuntu-os-cloud/ubuntu-1604-lts:1.0"

  # Create a container image for the composer environment
  container_port = "30000"

  # Create a network interface in the image
  network_interface {
    subnetwork = google_compute_subnetwork.subnet.id
    access_config {
      # add external ip to fetch packages
    }
  }

  # Create a network interface with an access config
  network_interface {
    subnetwork = google_compute_subnetwork.subnet-network_interface.id
    access_config {
      # add external ip to fetch packages
    }
  }

  # Create a network interface with a jump host
  network_interface {
    subnetwork = google_compute_subnetwork.subnet-network_interface.jump_host_ip_range
    access_config {
      # add external ip to fetch packages
    }
  }

  # Create a network interface with a jump host
  network_interface {
    subnetwork = google_compute_subnetwork.subnet-network_interface.jump_host_ip_range
    access_config {
      # add external ip to fetch packages
    }
  }

  # Create a network interface with a jump host
  network_interface {
    subnetwork = google_compute_subnetwork.subnet-network_interface.jump_host_ip_range
    access_config {
      # add external ip to fetch packages
    }
  }

  # Create a network interface with a jump host
  network_interface {
    subnetwork = google_compute_subnetwork.subnet-network_interface.jump_host_ip_range
    access_config {
      # add external ip to fetch packages
    }
  }

  # Create a network interface with a jump host
  network_interface {
    subnetwork = google_compute_subnetwork.subnet-network_interface.jump_host_ip_range
    access_config {
      # add external ip to fetch packages
    }
  }

  # Create a network interface with a jump host
  network_interface {
    subnetwork = google_compute_subnetwork.subnet-network_interface.jump_host_ip_range
    access_config {
      # add external ip to fetch packages
    }
  }

  # Create a network interface with a jump host
  network_interface {
    subnetwork = google_compute_subnetwork.subnet-network_interface.jump_host_ip_range
    access_config {
      # add external ip to fetch packages
    }
  }

  # Create a network interface with a jump host
  network_interface {
    subnetwork = google_compute_subnetwork.subnet-network_interface.jump_host_ip_range
    access_config {
      # add external ip to fetch packages
    }
  }

  # Create a network
}
