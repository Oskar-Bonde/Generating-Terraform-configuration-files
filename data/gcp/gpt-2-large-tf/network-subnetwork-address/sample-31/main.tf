terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with only region set to europe north1-micro, debian-9 image, default network interface and a name
resource "google_compute_instance" "name_0" {
  name = "my-vm"
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
# the compute network, and the default network interface and the name
resource "google_compute_network" "name_1" {
  name = "my-network"
  auto_create_subnetworks = false
}

# create compute subnetwork. Use ip cidr range 10.0.0.0/16 and use previous compute network called surf
# the subnetwork, and the default network interface and the name
resource "google_compute_subnetwork" "name_2" {
  name = "my-subnetwork"
  ip_cidr_range = "10.0.0.0/16"
  network = "default"
}

# resource compute address, set subnetwork id. Set address type to internal, use address 10.0.42.42.42/24/24/24/24/24/24/24/24/24/24/24/24/24/24/24/24/24/24/24/24/24/24/24/24/24/24/24/24/24/24/24/24/24/24/24/24/24/24/24/24/24/24/24/24/24/24/24/24/24/24/24/24/24/24/24/24/24/24/24/24/24/24/24/24/24/24/24/24/24/24/24/24/24/24/24/24/24/24/24/24/24/24/24/24/24/24/24/24/24/24/24/24/24/24/24/24/24/24/24/24/24/

# resource compute network, and the default network interface and the name
resource "google_compute_subnetwork" "name_3" {
  name = "my-subnetwork"
  ip_cidr_range = "10.0.1.0/24"
  network = "default"
}

