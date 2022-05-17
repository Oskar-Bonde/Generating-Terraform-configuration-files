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

resource "google_compute_instance" "name_1" {
  name = "my-compute-instance-disk-disk-1-%%{random_suffix}"
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

# create compute subnetwork

resource "google_compute_subnetwork" "name_2" {
  name = "my-subnetwork-vm-subnet-%%{random_suffix}"
  ip_cidr_range = "10.0.0.0/16"
  region = "us-central1"
}

# make a compute address resource

resource "google_compute_address" "name_3" {
  name = "my-ip-address-vm-ip-%%{random_suffix}"
  region = "us-central1"
}

