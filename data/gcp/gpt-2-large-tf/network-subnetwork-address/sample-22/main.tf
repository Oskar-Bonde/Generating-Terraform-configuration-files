terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with only region set to europe north1.0
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
resource "google_compute_instance" "name_1" {
  name = "my-vm-instance-disk-disk"
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

# create compute subnetwork. Use ip cidr range 10.0.0.0/16 and use previous compute network called surf
resource "google_compute_subnetwork" "name_2" {
  name          = "my-vm-subnetwork"
  ip_cidr_range = "10.0.0.0/16"
  network       = google_compute_network.vm_network.self_link
  region        = "us-central1"
}

# resource compute address, set subnetwork id. Set address type to internal, use address 10.0.42.42
resource "google_compute_subnetwork" "name_3" {
  name          = "my-vm-subnetwork_disk"
  ip_cidr_range = "10.0.1.0/24"
  network       = google_compute_network.vm_network.self_link
  region        = "us-central1"
}

