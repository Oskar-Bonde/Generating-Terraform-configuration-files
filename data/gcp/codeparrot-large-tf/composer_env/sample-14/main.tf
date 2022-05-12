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

  # Add a network interface to the instance
  network_interface {
    subnetwork = google_compute_subnetwork.subnet.id
    access_config {
      # add external ip to fetch packages
    }
  }

  # Create a container
  container {
    image = "debian-cloud/debian-9"
    # Use the latest image for the latest Ubuntu version
    image_version = "ubuntu-os-cloud/ubuntu-1604-lts"
    # Set to a specific version
    instance_type = "t2.micro"
    # Set to a specific Ubuntu version
    min_cpu_platform = "ubuntu-1604-lts"
    # Set to a specific SSD Volume Type
    volume_size = "50"
    # Set to a specific SSD Volume for the latest Ubuntu version
    volume_type = "standard"
  }

  # Create a network interface for the container
  network_interface {
    subnetwork = google_compute_subnetwork.subnet.id
    access_config {
      # add external ip to fetch packages
    }
  }

  # Create a service account for the instance
  service_account {
    email  = google_service_account.default.email
    scopes = ["cloud-platform"]
  }

  # Create a service account for the instance
  service_account {
    email  = google_service_account.default.email
    scopes = ["cloud-platform"]
  }

  # Create a service account for the instance
  service_account {
    email  = google_service_account.default.email
    scopes = ["cloud-platform"]
  }

  # Create a service account for the instance
  service_account {
    email  = google_service_account.default.email
    scopes = ["cloud-platform"]
  }

  # Create a service account for the instance
  service_account {
    email  = google_service_account.default.email
    scopes = ["cloud-platform"]
  }

  # Create a service account for the instance
  service_account {
    email  = google_service_account.default.email
    scopes = ["cloud-platform"]
  }

  # Create a service account for the instance
  service_account {
    email  = google_service_account.default.email
    scopes = ["cloud-platform"]
  }

  # Create a service account for the instance
  service_account {
    email  = google_service_account.default.email
    scopes = ["cloud-platform"]
  }

  # Create a service account for the instance
  service_account {
    email  = google_service_account.default.email
    scopes = ["cloud-platform"]
  }

  # Create a service account for the instance
  service_account {
    email  = google_service_account.default.email
    scopes = ["cloud-platform"]
  }

  # Create a service account for the instance
  service_account {
    email  = google_service_account.default.email
    scopes = ["cloud-platform"]
  }

  # Create a service account for the instance
  service_account {
    email  = google_service_account
}

