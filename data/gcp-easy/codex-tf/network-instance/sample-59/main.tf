terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
provider "google" {
  credentials = file("${path.module}/credentials.json")
  project     = var.project
  region      = var.region
}

# compute network resource
resource "google_compute_network" "name_0" {
  name                    = var.network_name
  auto_create_subnetworks = false
}

# a compute instance 
resource "google_compute_instance" "name_1" {
  name         = var.instance_name
  machine_type = var.machine_type
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = var.image
    }
  }

  network_interface {
    network = google_compute_network.name_0.name
  }
}

