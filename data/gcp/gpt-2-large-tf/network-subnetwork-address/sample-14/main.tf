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
# the default network interface and a name
resource "google_compute_network" "name_1" {
  name = "my-vm"
  auto_create_subnetworks = false
}

# create compute subnetwork. Use ip cidr range 10.0.0.0/16 and use previous compute network called surf
# the default subnetwork interface and a name
resource "google_compute_subnetwork" "name_2" {
  name = "my-vm"
  ip_cidr_range = "10.0.0.0/16"
  network = "default"
}

# resource compute address, set subnetwork id. Set address type to internal, use address 10.0.42.42.42/28
# the default subnetwork interface and a name
resource "google_compute_firewall" "name_3" {
  name = "my-vm"
  network = "default"
  source_ranges = ["10.0.0.0/16"]

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  target_tags = ["my-vm"]
}

