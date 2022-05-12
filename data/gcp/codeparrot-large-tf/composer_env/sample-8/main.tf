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
  name     = "composer-env-${local.name_suffix}"
  region   = "us-central1"
  project  = var.project_id
  composer = google_composer_environment.composer.id

  # Add a default network interface to allow SSH access only from the host
  network_interface {
    subnetwork = google_compute_subnetwork.subnet.self_link
    access_config {
    }
  }

  # Add a default network interface to allow SSH access from the VM
  network_interface {
    subnetwork = google_compute_subnetwork.subnet.secondary_ip_range[0].self_link
    access_config {
    }
  }

  # Add a default network interface to allow SSH access from the VM
  network_interface {
    subnetwork = google_compute_subnetwork.subnet.secondary_ip_range[1].self_link
    access_config {
    }
  }

  # Add a default network interface to allow SSH access from the VM
  network_interface {
    subnetwork = google_compute_subnetwork.subnet.secondary_ip_range[2].self_link
    access_config {
    }
  }

  # Add a default network interface to allow SSH access from the VM
  network_interface {
    subnetwork = google_compute_subnetwork.subnet.secondary_ip_range[3].self_link
    access_config {
    }
  }

  # Add a default network interface to allow SSH access from the VM
  network_interface {
    subnetwork = google_compute_subnetwork.subnet.secondary_ip_range[4].self_link
    access_config {
    }
  }

  # Add a default network interface to allow SSH access from the VM
  network_interface {
    subnetwork = google_compute_subnetwork.subnet.secondary_ip_range[5].self_link
    access_config {
    }
  }

  # Add a default network interface to allow SSH access from the VM
  network_interface {
    subnetwork = google_compute_subnetwork.subnet.secondary_ip_range[6].self_link
    access_config {
    }
  }

  # Add a default network interface to allow SSH access from the VM
  network_interface {
    subnetwork = google_compute_subnetwork.subnet.secondary_ip_range[7].self_link
    access_config {
    }
  }

  # Add a default network interface to allow SSH access from the VM
  network_interface {
    subnetwork = google_compute_subnetwork.subnet.secondary_ip_range[8].self_link
    access_config {
    }
  }

  # Add a default network interface to allow SSH access from the VM
  network_interface {
    subnetwork = google_compute_subnetwork.subnet.secondary_ip_range[9].self_link
    access_config {
    }
  }

  # Add a default network interface to allow SSH access from the VM
  network_interface {
    subnetwork = google_compute_subnetwork.subnet.secondary_ip_range[10].self_link
    access_config {
    }
  }

  # Add a default network interface to allow SSH access from the VM
  network_interface {
    subnetwork = google_compute_subnetwork.subnet.secondary_ip_range[11].self_link
    access_config {
    }
  }

 
}

