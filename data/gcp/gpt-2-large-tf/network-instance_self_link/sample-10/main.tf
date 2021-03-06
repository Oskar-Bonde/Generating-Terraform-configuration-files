terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with only region set to europe north1-standard and europe north2-standard
resource "google_compute_instance" "name_0" {
  name = "my-compute-instance-vm"
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

# compute network that auto creates subnetworks
resource "google_compute_network" "name_1" {
  name = "my-network-vm"
  auto_create_subnetworks = false
}

# a compute instance that has machine type f1-micro, debian-9 image, uses self link to vpc network and has a name
resource "google_compute_subnetwork" "name_2" {
  name = "my-subnet-vm"
  ip_cidr_range = "10.0.0.0/16"
  region = "us-central1"
}

