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

# compute network that auto creates subnetworks
resource "google_compute_subnetwork" "name_0" {
  name          = "my-subnetwork"
  ip_cidr_range = "10.127.0.0/20"
  region        = "europe-west1"
  network       = google_compute_network.vm_network.id
}

# a compute instance that has machine type f1-micro, debian-9 image, uses self link to vpc network and has a name
resource "google_compute_instance" "name_1" {
  name         = "my-vm-1"
  machine_type = "f1-micro"
  zone         = "europe-west1-b"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = google_compute_network.vm_network.id
  }
}

