terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
resource "google_compute_instance" "name_0" {
  name = "my-compute-instance-from-tcp"
  machine_type = "f1-micro"

  network_interface {
    network = "default"    
    access_config {
    }
  }
}

# a compute network resource

resource "google_compute_network" "name_1" {
  name = "my-network-default"
  auto_create_subnetworks = false
}

# compute route resource

resource "google_compute_subnetwork" "name_2" {
  name = "my-subnetwork-default"
  ip_cidr_range = "10.0.0.0/16"
  region = "us-central1"
  network = "default"
}
