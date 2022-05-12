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

  config {
    node_count = 3
  }

  composer_env {
    image = "debian-cloud/debian-9"
    type  = "DOCKER"
    network = "default"
  }

  # Add a network interface to allow SSH access only from the internet
  # at boot time.
  network_interface {
    subnetwork = "default"
  }

  # Add a default SSH key file to enable login access
  ssh_authorized_keys = ["${var.ssh_authorized_key}"]

  # Add a default network interface to allow SSH access only from the internet
  # at boot time.
  network_interface {
    subnetwork = "default"
  }

  # Enable the Google Cloud provider
  google_project = var.google_project
  # Enable the Google Cloud provider
  enable_composer_env = true
  # Enable the Google Cloud provider
  enable_http_port_access = true
  # Enable the Google Cloud provider
  enable_composer_sa = true
  # Enable the Google Cloud provider
  enable_http_proxy = true
  # Enable the Google Cloud provider
  enable_iap = true
  # Enable the Google Cloud provider
  enable_logging = true
  # Enable the Google Cloud provider
  enable_monitoring = true
  # Enable the Google Cloud provider
  enable_iap_tunneling = true
  # Enable the Google Cloud provider
  enable_log_denies = true
  # Enable the Google Cloud provider
  enable_mesh_metadata = true
  # Enable the Google Cloud provider
  enable_resource_quota = true
  # Enable the Google Cloud provider
  enable_service_account = true
}

