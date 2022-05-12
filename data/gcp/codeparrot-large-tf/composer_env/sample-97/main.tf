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
    subnetwork = "default"
  }

  # Add a default network interface to allow HTTP access only from the host
  network_interface {
    subnetwork = "default"
  }

  # Create a new instance to host the cluster
  instance_template = google_compute_instance_template.vm_instance.id

  # Add a default network interface to allow SSH access only from the host
  network_interface {
    subnetwork = "default"
  }

  # Add a default network interface to allow HTTP access only from the host
  network_interface {
    subnetwork = "default"
  }

  # Create a new instance to host the cluster
  instance_group_urls = [
    "https://www.googleapis.com/auth/compute",
    "https://www.googleapis.com/auth/devstorage.read_only",
    "https://www.googleapis.com/auth/logging.write",
    "https://www.googleapis.com/auth/monitoring",
    "https://www.googleapis.com/auth/trace.append",
    "https://www.googleapis.com/auth/cloud-platform",
    "https://www.googleapis.com/auth/cloud-platform.read_only",
    "https://www.googleapis.com/auth/servicecontrol",
    "https://www.googleapis.com/auth/service.management.readonly",
    "https://www.googleapis.com/auth/trace.append",
    "https://www.googleapis.com/auth/userinfo.email"
  ]

  # Add a default network interface to allow SSH access only from the host
  network_interface {
    subnetwork = "default"
  }

  # Add a default network interface to allow HTTP access only from the host
  network_interface {
    subnetwork = "default"
  }

  # Create a new instance to host the cluster
  instance_template_initial_version = "1.2"

  # Add a default network interface to allow SSH access only from the host
  network_interface {
    subnetwork = "default"
  }

  # Create a new instance to host the cluster
  instance_group_urls = [
    "https://www.googleapis.com/auth/compute",
    "https://www.googleapis.com/auth/devstorage.read_only",
    "https://www.googleapis.com/auth/logging.write",
    "https://www.googleapis.com/auth/monitoring",
    "https://www.googleapis.com/auth/trace.append",
    "https://www.googleapis.com/auth/cloud-platform",
    "https://www.googleapis.com/auth/cloud-platform.read_only",
    "https://www.googleapis.com/auth/servicecontrol",
    "https://www.googleapis.com/auth/service.management.readonly",
    "https://www.googleapis.com/auth/trace.append",
    "https://www.googleapis.com/auth/userinfo.email"
  ]

  # Add a default network interface to allow SSH access only from
}

