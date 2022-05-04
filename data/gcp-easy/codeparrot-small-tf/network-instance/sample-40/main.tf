terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
provider "google" {
}

# compute network resource
resource "google_compute_network" "name_0" {
  name                    = "my-compute-network-${random_suffix}"
  auto_create_subnetworks = false
}

# a compute instance
resource "google_compute_instance" "name_1" {
  name         = "my-compute-instance-${random_suffix}"
  machine_type = "f1-micro"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = "default"
    access_config {
    }
  }
}

