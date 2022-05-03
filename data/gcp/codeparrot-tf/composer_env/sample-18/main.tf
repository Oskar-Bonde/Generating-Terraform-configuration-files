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

  # Set machine type
  config {
    machine_type = "e2-micro"
  }

  # Set networking mode
  network_policy {
    network_tier = "STANDARD"
  }

  # Set scheduling options
  scheduling {
    preemptible       = true
    on_host_maintenance = "MIGRATE"
  }

  # Set network policy
  network_policy {
    network_tier = "PREMIUM"
  }

  # Set scheduling
  scheduling {
    preemptible       = true
    on_host_maintenance = "MIGRATE"
  }

  # Set network
  network = "default"

  # Set access config
  access_config {
    # Ephemeral IP
    // Ephemeral IP
    // Ephemeral IP
    // Ephemeral IP
    // Ephemeral IP
    // Ephemeral IP
    // Ephemeral IP
    // Ephemeral IP
    // Ephemeral IP
    // Ephemeral IP
    // Ephemeral IP
    // Ephemeral IP
    // Ephemeral IP
    // Ephemeral IP
    // Ephemeral IP
    // Ephemeral IP
    // Ephemeral IP
    // Ephemeral IP
    // Ephemeral IP
    // Ephemeral IP
    // Ephemeral IP
    // Ephemeral IP
    // Ephemeral IP
    // Ephemeral IP
    // Ephemeral IP
    // Ephemeral IP
    // Ephemeral IP
    // Ephemeral IP
    // Ephemeral IP
    // Ephemeral IP
    // Ephemeral IP
    // Ephemeral IP
    // Ephemeral IP
    // Ephemeral IP
    // Ephemeral IP
    // Ephemeral IP
    // Ephemeral IP
    // Ephemeral IP
    // Ephemeral IP
    // Ephemeral IP
    // Ephemeral IP
    // Ephemeral IP
    // Ephemeral IP
    // Ephemeral IP
    // Ephemeral IP
    // Ephemeral IP
    // Ephemeral IP
    // Ephemeral IP
    // Ephemeral IP
    // Ephemeral IP
    // Ephemeral IP
    // Ephemeral IP
    // Ephemeral IP
    // Ephemeral IP
    // Ephemeral IP
    // Ephemeral IP
    // Ephemeral IP
    // Ephemeral IP
    // Ephemeral IP
    // Ephemeral IP
    // Ephemeral IP
    // Ephemeral IP
    // Ephemeral IP
    // Ephemeral IP
    // Ephemeral IP
    // Ephemeral IP
    // Ephemeral IP
    // Ephemeral IP
    // Ephemeral IP
    // Ephemeral IP
    // Ephemeral IP
    // Ephemeral IP
    // Ephemeral IP
    // Ephemeral IP
    // Ephemeral IP
    // Ephemeral IP
    // Ephemeral IP
    // Ephemeral IP
    // Ephemeral IP
    // Ephemeral IP
    // Ephemeral IP
    // Ephemeral IP
    // Ephemeral IP
    // Ephemeral IP
    // Ephemeral IP
    // Ephemeral IP
    // Ephemeral IP
    // Ephemeral IP
    // Ephemeral IP
    // Ephemeral IP
    // Ephemeral IP
    // Ephemeral IP
    // Ephemeral IP
    // Ephemeral IP
    // Ephemeral IP
    // Ephemeral IP
    // Ephemeral IP
    // Ephemeral IP
    // Ephemeral IP
    // Ephemeral IP
    // Ephemeral IP
    // Ephemeral IP
    // Ephemeral IP
    // Ephemeral IP
    // Ephemeral IP
    // Ephemeral
}

