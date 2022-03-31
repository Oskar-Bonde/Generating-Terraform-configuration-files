terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
provider "google" {
  credentials = "${file("${path.module}/credentials.json")}"
  project     = "${var.project}"
}

# compute network that auto creates subnetworks
resource "google_compute_network" "name_0" {
  name = "${var.project}-network"
}

# a compute instance that has machine type f1-micro, debian-9 image and self link to vpc network
resource "google_compute_instance" "name_1" {
  name         = "${var.project}-instance"
  machine_type = "f1-micro"
  zone         = "us-central1-a"
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }
  network_interface {
    network = "${google_compute_network.name_0.self_link}"
  }
}

