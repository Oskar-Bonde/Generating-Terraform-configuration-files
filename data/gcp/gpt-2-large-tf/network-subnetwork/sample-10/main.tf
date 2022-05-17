terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with only region set to europe north1-standard and the instance.
resource "google_compute_instance" "name_0" {
  name = "my-vm-instance-disk"
  machine_type = "f1-micro"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = "default"    
  }
}

# create compute network, give it a name and set auto create subnetworks to false
resource "google_compute_network" "name_1" {
  name = "my-vm-network"
  auto_create_subnetworks = false
}

# create compute subnetwork. Use ip cidr range 10.0.0.0/16 and use compute network surf id
resource "google_compute_subnetwork" "name_2" {
  name = "my-vm-subnet"
  ip_cidr_range = "10.0.0.0/16"
  region = "us-central1"
  network = "default"
}

