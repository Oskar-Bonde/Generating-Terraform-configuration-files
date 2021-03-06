terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
resource "google_compute_instance" "name_0" {
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

resource "google_compute_network" "name_1" {
  name = "my-network-default-%%{random_suffix}"
  auto_create_subnetworks = false
}

# create compute subnetwork

resource "google_compute_subnetwork" "name_2" {
  name = "my-subnetwork-default-%%{random_suffix}"
  ip_cidr_range = "10.0.0.0/16"
  region = "us-central1"
}

# make a compute address resource

resource "google_compute_firewall" "name_3" {
  name = "my-firewall-default-%%{random_suffix}"
  network = "default"
  source_ranges = ["0.0.0.0/0"]
  allow {
    protocol = "tcp"
    ports    = ["80", "443"]
  }

  allow {
    protocol = "udp"
    ports    = ["443"]
  }

  allow {
    protocol = "icmp"
    ports    = ["22"]
  }

  source_tags = ["default"]
  target_tags = ["default"]
}

