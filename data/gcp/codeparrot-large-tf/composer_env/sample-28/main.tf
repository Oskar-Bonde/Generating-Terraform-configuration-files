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
  name     = "composer-environment-${local.name_suffix}"
  region   = "us-central1"
  project  = var.project_id
  composer = google_composer_environment.name_0.id

  # Add a default network interface to the instance
  network_interface {
    subnetwork = google_compute_subnetwork.subnet.id
    access_config {
      # add external ip to fetch packages
    }
  }

  # Add a default network interface to the instance
  network_interface {
    subnetwork = google_compute_subnetwork.subnet-2.id
    access_config {
      # add external ip to fetch packages
    }
  }

  # Add a default network interface to the instance
  network_interface {
    subnetwork = google_compute_subnetwork.subnet-3.id
    access_config {
      # add external ip to fetch packages
    }
  }

  # Add a default network interface to the instance
  network_interface {
    subnetwork = google_compute_subnetwork.subnet-4.id
    access_config {
      # add external ip to fetch packages
    }
  }

  # Add a default network interface to the instance
  network_interface {
    subnetwork = google_compute_subnetwork.subnet-5.id
    access_config {
      # add external ip to fetch packages
    }
  }

  # Add a default network interface to the instance
  network_interface {
    subnetwork = google_compute_subnetwork.subnet-6.id
    access_config {
      # add external ip to fetch packages
    }
  }

  # Add a default network interface to the instance
  network_interface {
    subnetwork = google_compute_subnetwork.subnet-7.id
    access_config {
      # add external ip to fetch packages
    }
  }

  # Add a default network interface to the instance
  network_interface {
    subnetwork = google_compute_subnetwork.subnet-8.id
    access_config {
      # add external ip to fetch packages
    }
  }

  # Add a default network interface to the instance
  network_interface {
    subnetwork = google_compute_subnetwork.subnet-9.id
    access_config {
      # add external ip to fetch packages
    }
  }

  # Add a default network interface to the instance
  network_interface {
    subnetwork = google_compute_subnetwork.subnet-10.id
    access_config {
      # add external ip to fetch packages
    }
  }

  # Add a default network interface to the instance
  network_interface {
    subnetwork = google_compute_subnetwork.subnet-11.id
    access_config {
      # add external ip to fetch packages
    }
  }

  # Add a default network interface to the instance
  network_interface {
    subnetwork = google_compute_subnetwork.subnet-12.id
    access_config {
      # add external ip to fetch packages
    }
  }

  # Add a default network interface to the instance
  network_interface {
    subnetwork = google_compute_subnetwork.subnet-13.id
    access_config {
      # add external ip to fetch packages
    }
  }

  # Add a default network interface to the instance
  network_interface {
    subnetwork = google_compute_subnetwork.subnet-14.id
    access_config {
      # add external ip to fetch packages
    }
  }

  # Add a default network interface to the
}

