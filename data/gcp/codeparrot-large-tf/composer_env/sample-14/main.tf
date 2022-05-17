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
  region  = "us-central1"
  project = var.project_id

  composer_env {
    image = "debian-cloud/debian-9"
    type  = "NATIVE"
  }

  # Add a network interface to allow HTTP(S) load balancing
  network_interface {
    network = "default"
  }

  # Add a security group to allow HTTP(S) load balancing
  security_groups = [
    "default",
    "${var.security_group_id}",
  ]

  # Add a default network security group to allow HTTP(S) load balancing
  default_security_group_ids = [
    "${var.security_group_id}",
  ]

  # Enable data scientists
  # data_scientists = [
  #   "${var.data_scientists}",
  # ]

  # Enable network policy
  network_policy {
    enabled = true
  }

  # Enable network policy
  network_policy {
    enabled = true
  }

  # Enable network policy
  network_policy {
    enabled = true
  }

  # Enable network policy
  network_policy {
    enabled = true
  }

  # Enable network policy
  network_policy {
    enabled = true
  }

  # Enable network policy
  network_policy {
    enabled = true
  }

  # Enable network policy
  network_policy {
    enabled = true
  }

  # Enable network policy
  network_policy {
    enabled = true
  }

  # Enable network policy
  network_policy {
    enabled = true
  }

  # Enable network policy
  network_policy {
    enabled = true
  }

  # Enable network policy
  network_policy {
    enabled = true
  }

  # Enable network policy
  network_policy {
    enabled = true
  }

  # Enable network policy
  network_policy {
    enabled = true
  }

  # Enable network policy
  network_policy {
    enabled = true
  }

  # Enable network policy
  network_policy {
    enabled = true
  }

  # Enable network policy
  network_policy {
    enabled = true
  }

  # Enable network policy
  network_policy {
    enabled = true
  }

  # Enable network policy
  network_policy {
    enabled = true
  }

  # Enable network policy
  network_policy {
    enabled = true
  }

  # Enable network policy
  network_policy {
    enabled = true
  }

  # Enable network policy
  network_policy {
    enabled = true
  }

  # Enable network policy
  network_policy {
    enabled = true
  }

  # Enable network policy
  network_policy {
    enabled = true
  }

  # Enable network policy
  network_policy {
    enabled = true
  }

  # Enable network policy
  network_policy {
    enabled = true
  }

  # Enable network policy
  network_policy {
    enabled = true
  }

  # Enable network policy
  network_policy {
    enabled = true
  }

  # Enable network policy
  network_policy {
    enabled = true
  }

  # Enable network policy
  network_policy {
    enabled = true
  }

  # Enable network policy
  network_policy {
    enabled = true
  }

  # Enable network policy
  network_policy {
    enabled = true
  }

  # Enable network policy
  network_policy {
    enabled = true
  }

  # Enable network policy
  network_policy {
    enabled = true
  }

  # Enable network policy
  network_policy {
    enabled
}

