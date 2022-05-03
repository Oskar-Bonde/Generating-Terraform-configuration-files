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

  # Add a default network interface to allow SSH access only from the host
  network_interface {
    subnetwork = google_compute_subnetwork.subnet.id
    access_config {
      // Ephemeral IP
    }
  }

  # Add a default network interface to allow SSH access from the VM
  network_interface {
    subnetwork = google_compute_subnetwork.subnet.id
    network_ip = "10.10.10.10"
  }

  # Add a default network interface to allow SSH access from the VM
  network_interface {
    subnetwork = google_compute_subnetwork.subnet.id
    network_ip = "10.10.10.11"
  }

  # Add a default network interface to allow SSH access from the VM
  network_interface {
    subnetwork = google_compute_subnetwork.subnet.id
    network_ip = "10.10.10.12"
  }

  # Add a default network interface to allow SSH access from the VM
  network_interface {
    subnetwork = google_compute_subnetwork.subnet.id
    network_ip = "10.10.10.13"
  }

  # Add a default network interface to allow SSH access from the VM
  network_interface {
    subnetwork = google_compute_subnetwork.subnet.id
    network_ip = "10.10.10.14"
  }

  # Add a default network interface to allow SSH access from the VM
  network_interface {
    subnetwork = google_compute_subnetwork.subnet.id
    network_ip = "10.10.10.15"
  }

  # Add a default network interface to allow SSH access from the VM
  network_interface {
    subnetwork = google_compute_subnetwork.subnet.id
    network_ip = "10.10.10.16"
  }

  # Add a default network interface to allow SSH access from the VM
  network_interface {
    subnetwork = google_compute_subnetwork.subnet.id
    network_ip = "10.10.10.17"
  }

  # Add a default network interface to allow SSH access from the VM
  network_interface {
    subnetwork = google_compute_subnetwork.subnet.id
    network_ip = "10.10.10.18"
  }

  # Add a default network interface to allow SSH access from the VM
  network_interface {
    subnetwork = google_compute_subnetwork.subnet.id
    network_ip = "10.10.10.19"
  }

  # Add a default network interface to allow SSH access from the VM
  network_interface {
    subnetwork = google_compute_subnetwork.subnet.id
    network_ip = "10.10.10.20"
  }

  # Add a default network interface to allow SSH access from the VM
  network_interface {
    subnetwork = google_compute_subnetwork.subnet.id
    network_ip = "10.10.10.21"
  }

  # Add a default network interface to allow SSH access from the VM
  network_interface {
    subnetwork = google_compute_subnetwork.subnet.id
   
}

