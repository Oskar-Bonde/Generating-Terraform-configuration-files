terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with only region set to europe north1
provider "google" {
  region = "europe-north1"
}

# compute network that auto creates subnetworks
resource "google_compute_network" "name_0" {
  name = "vpc-network"
  auto_create_subnetworks = true
}

# a compute instance that has machine type f1-micro, debian-9 image, uses self link to vpc network and has a name
resource "google_compute_instance" "name_1" {
  name         = "instance-1"
  machine_type = "f1-micro"
  zone         = "europe-north1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = google_compute_network.name_0.self_link
  }
}

