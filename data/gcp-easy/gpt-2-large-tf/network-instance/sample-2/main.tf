terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
resource "google_compute_instance" "name_0" {
  name = "my-compute-instance1-%%{random_suffix}"
  machine_type = "f1-micro"

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

# compute network resource

resource "google_compute_network" "name_1" {
  name = "my-network-1-%%{random_suffix}"
  auto_create_subnetworks = false
}

# a compute instance resource

resource "google_compute_subnetwork" "name_2" {
  name = "my-subnetwork-1-%%{random_suffix}"
  ip_cidr_range = "10.0.0.0/16"
  region = "us-central1"
}

