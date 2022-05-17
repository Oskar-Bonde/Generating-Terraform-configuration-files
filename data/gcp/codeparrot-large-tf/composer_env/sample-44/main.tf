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
  name     = "composer-environment"
  region   = "us-central1"
  project  = var.project_id
  composer = google_composer_environment.name_0.name

  # Add a network interface to the instance
  network_interface {
    subnetwork = google_compute_subnetwork.subnet-1.name
    access_config {
      // Ephemeral IP
    }
  }

  # Add a fixed IP address to the instance
  ip_address = "10.0.0.8"

  # Add a network interface to the instance
  network_interface {
    subnetwork = google_compute_subnetwork.subnet-2.name
    access_config {
      // Ephemeral IP
    }
  }

  # Add a fixed IP address to the instance
  ip_address = "10.0.0.7"

  # Add a network interface to the instance
  network_interface {
    subnetwork = google_compute_subnetwork.subnet-3.name
    access_config {
      // Ephemeral IP
    }
  }

  # Add a network interface to the instance
  network_interface {
    subnetwork = google_compute_subnetwork.subnet-4.name
    access_config {
      // Ephemeral IP
    }
  }

  # Add a network interface to the instance
  network_interface {
    subnetwork = google_compute_subnetwork.subnet-5.name
    access_config {
      // Ephemeral IP
    }
  }

  # Add a network interface to the instance
  network_interface {
    subnetwork = google_compute_subnetwork.subnet-6.name
    access_config {
      // Ephemeral IP
    }
  }

  # Add a network interface to the instance
  network_interface {
    subnetwork = google_compute_subnetwork.subnet-7.name
    access_config {
      // Ephemeral IP
    }
  }

  # Add a network interface to the instance
  network_interface {
    subnetwork = google_compute_subnetwork.subnet-8.name
    access_config {
      // Ephemeral IP
    }
  }

  # Add a network interface to the instance
  network_interface {
    subnetwork = google_compute_subnetwork.subnet-9.name
    access_config {
      // Ephemeral IP
    }
  }

  # Add a network interface to the instance
  network_interface {
    subnetwork = google_compute_subnetwork.subnet-10.name
    access_config {
      // Ephemeral IP
    }
  }

  # Add a network interface to the instance
  network_interface {
    subnetwork = google_compute_subnetwork.subnet-11.name
    access_config {
      // Ephemeral IP
    }
  }

  # Add a network interface to the instance
  network_interface {
    subnetwork = google_compute_subnetwork.subnet-12.name
    access_config {
      // Ephemeral IP
    }
  }

  # Add a network interface to the instance
  network_interface {
    subnetwork = google_compute_subnetwork.subnet-13.name
    access_config {
      // Ephemeral IP
    }
  }

  # Add a network interface to the instance
  network_interface {
    subnetwork = google_compute_subnetwork.subnet-14.name
    access_config {
      // Ephemeral IP
    }
  }

  # Add a network interface to
}

