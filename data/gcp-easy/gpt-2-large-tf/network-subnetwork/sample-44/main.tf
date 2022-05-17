terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
resource "google_compute_instance" "name_0" {
  name = "my-compute-instance-disk"
  machine_type = "f1-micro"

  network_interface {
    network = "default"    
    access_config {
    }
  }
}

# create compute network

resource "google_compute_instance" "name_1" {
  name = "my-compute-instance-disk-disk"
  machine_type = "f1-micro"

  network_interface {
    network = "default"    
    access_config {
    }
  }
}

# create compute subnetwork

resource "google_compute_subnetwork" "name_2" {
  name = "my-subnetwork-vm-subnet"
  ip_cidr_range = "10.0.0.0/16"
  region = "us-central1"
  network       = google_compute_network.vm_network.id
}

