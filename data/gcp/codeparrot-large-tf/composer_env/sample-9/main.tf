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
  name     = "composer-environment-${local.name_suffix}"
  region   = "us-central1"
  project  = google_project.project.project_id

  config {
    node_config {
      machine_type = "e2-micro"

      image = "debian-cloud/debian-9"
    }
  }

  # Add a network interface to allow SSH access only from the internet
  # at boot time.
  network_interface {
    subnetwork = google_compute_subnetwork.subnet.self_link

    access_config {
      // Ephemeral IP
    }
  }

  # Add a network interface to allow HTTP access from the internet
  # at boot time.
  network_interface {
    subnetwork = google_compute_subnetwork.subnet.self_link

    access_config {
      // Ephemeral IP
    }
  }

  # Add a network interface to allow HTTP access from the internet
  # at boot time.
  network_interface {
    subnetwork = google_compute_subnetwork.subnet.self_link

    access_config {
      // Ephemeral IP
    }
  }

  # Add a network interface to allow HTTP access from the internet
  # at boot time.
  network_interface {
    subnetwork = google_compute_subnetwork.subnet.self_link

    access_config {
      // Ephemeral IP
    }
  }

  # Add a network interface to allow HTTP access from the internet
  # at boot time.
  network_interface {
    subnetwork = google_compute_subnetwork.subnet.self_link

    access_config {
      // Ephemeral IP
    }
  }

  # Add a network interface to allow HTTP access from the internet
  # at boot time.
  network_interface {
    subnetwork = google_compute_subnetwork.subnet.self_link

    access_config {
      // Ephemeral IP
    }
  }

  # Add a network interface to allow HTTP access from the internet
  # at boot time.
  network_interface {
    subnetwork = google_compute_subnetwork.subnet.self_link

    access_config {
      // Ephemeral IP
    }
  }

  # Add a network interface to allow HTTP access from the internet
  # at boot time.
  network_interface {
    subnetwork = google_compute_subnetwork.subnet.self_link

    access_config {
      // Ephemeral IP
    }
  }

  # Add a network interface to allow HTTP access from the internet
  # at boot time.
  network_interface {
    subnetwork = google_compute_subnetwork.subnet.self_link

    access_config {
      // Ephemeral IP
    }
  }

  # Add a network interface to allow HTTP access from the internet
  # at boot time.
  network_interface {
    subnetwork = google_compute_subnetwork.subnet.self_link

    access_config {
      // Ephemeral IP
    }
  }

  # Add a network interface to allow HTTP access from the internet
  # at boot time.
  network_interface {
    subnetwork = google_compute_subnetwork.subnet.self_link

    access_config {
      // Ephemeral IP
    }
  }

  # Add a network interface to allow HTTP access from the internet
  # at boot time.
  network_interface {
    subnetwork = google_compute_subnetwork.subnet.self_link

    access_config {
      //
}

