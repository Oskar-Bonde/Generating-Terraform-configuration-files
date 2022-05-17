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
  composer = google_composer_environment.name_0.id

  # Create a container image for the composer environment
  image = "debian-cloud/debian-9"

  # Create a container image for the composer environment
  container_image = "debian-9:latest"

  # Create a disk from the image
  disk {
    source_image = data.google_compute_image.debian-9.self_link
    type         = "pd-standard"
    boot         = true
    type         = "pd-ssd"
    disk_size_gb = 50
  }

  # Create a network interface in the container image
  network_interface {
    subnetwork = google_compute_subnetwork.subnet.id
    network_ip = "10.0.0.0/16"
  }

  # Attach the composer license to the image
  container_image {
    type = "pd-ssd"
    image = data.google_compute_image.debian-9.self_link
  }

  # Create a network interface with a custom image
  network_interface {
    subnetwork = google_compute_subnetwork.subnet.id
    network_ip = "10.0.1.0/24"
  }

  # Create a network interface with a custom image
  network_interface {
    subnetwork = google_compute_subnetwork.subnet.id
    network_ip = "10.0.2.0/24"
  }

  # Create a network interface with a custom image
  network_interface {
    subnetwork = google_compute_subnetwork.subnet.id
    network_ip = "10.0.3.0/24"
  }

  # Create a network interface with a custom image
  network_interface {
    subnetwork = google_compute_subnetwork.subnet.id
    network_ip = "10.0.4.0/24"
  }

  # Create a network interface with a custom image
  network_interface {
    subnetwork = google_compute_subnetwork.subnet.id
    network_ip = "10.0.5.0/24"
  }

  # Create a network interface with a custom image
  network_interface {
    subnetwork = google_compute_subnetwork.subnet.id
    network_ip = "10.0.6.0/24"
  }

  # Create a network interface with a custom image
  network_interface {
    subnetwork = google_compute_subnetwork.subnet.id
    network_ip = "10.0.7.0/24"
  }

  # Create a network interface with a custom image
  network_interface {
    subnetwork = google_compute_subnetwork.subnet.id
    network_ip = "10.0.8.0/24"
  }

  # Create a network interface with a custom image
  network_interface {
    subnetwork = google_compute_subnetwork.subnet.id
    network_ip = "10.0.9.0/24"
  }

  # Create a network interface with a custom image
  network_interface {
    subnetwork = google_compute_subnetwork.subnet.id
    network_ip = "10.0.10.0/24"
 
}

