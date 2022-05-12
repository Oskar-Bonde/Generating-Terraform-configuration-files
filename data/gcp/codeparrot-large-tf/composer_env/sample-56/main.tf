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

  # Set machine type, and enable it in the instance
  # https://cloud.google.com/compute/docs/instances#specify_instance_type
  # https://cloud.google.com/compute/docs/disks#specify_boot_disk
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  # Set network interface
  network_interface {
    subnetwork = google_compute_subnetwork.subnet.self_link
    access_config {
      # Ephemeral IP
    }
  }

  # Set access config
  access_config {
    # Ephemeral IP
    nat_ip = google_compute_address.address.address
    # Ephemeral IP
    network_tier = "PREMIUM"
  }

  # Set network interface
  network_interface {
    subnetwork = google_compute_subnetwork.subnet.self_link
    access_config {
      nat_ip = google_compute_address.address.address
      network_tier = "PREMIUM"
    }
  }

  # Set access config
  access_config {
    # Ephemeral IP
    nat_ip = google_compute_address.address.address
    # Ephemeral IP
    network_tier = "PREMIUM"
  }

  # Set network interface
  network_interface {
    subnetwork = google_compute_subnetwork.subnet.self_link
    access_config {
      nat_ip = google_compute_address.address.address
      network_tier = "PREMIUM"
    }
  }

  # Set access config
  access_config {
    # Ephemeral IP
    nat_ip = google_compute_address.address.address
    # Ephemeral IP
    network_tier = "PREMIUM"
  }

  # Set network interface
  network_interface {
    subnetwork = google_compute_subnetwork.subnet.self_link
    access_config {
      nat_ip = google_compute_address.address.address
      network_tier = "PREMIUM"
    }
  }

  # Set access config
  access_config {
    # Ephemeral IP
    nat_ip = google_compute_address.address.address
    # Ephemeral IP
    network_tier = "PREMIUM"
  }

  # Set network interface
  network_interface {
    subnetwork = google_compute_subnetwork.subnet.self_link
    access_config {
      nat_ip = google_compute_address.address.address
      network_tier = "PREMIUM"
    }
  }

  # Set access config
  access_config {
    # Ephemeral IP
    nat_ip = google_compute_address.address.address
    # Ephemeral IP
    network_tier = "PREMIUM"
  }

  # Set network interface
  network_interface {
    subnetwork = google_compute_subnetwork.subnet.self_link
    access_config {
      nat_ip = google_compute_address.address.address
      network_tier = "PREMIUM"
    }
  }

  # Set access config
  access_config {
    # Ephemeral IP
    nat_ip = google_compute_address
}

