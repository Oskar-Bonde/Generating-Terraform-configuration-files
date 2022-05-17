terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider blockresource "google_compute_instance" "vm_instance_disk" {
  name = "my-compute-instance-disk-%%{random_suffix}"
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

# create compute network

resource "google_compute_network" "name_0" {
  name = "my-network-default-%%{random_suffix}"
  auto_create_subnetworks = false
}

# create compute firewall

resource "google_compute_subnetwork" "name_1" {
  name = "my-subnetwork-default-%%{random_suffix}"
  ip_cidr_range = "10.0.0.0/16"
  region = "us-central1"
}
