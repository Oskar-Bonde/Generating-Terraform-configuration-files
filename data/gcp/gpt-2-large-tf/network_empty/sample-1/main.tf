terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with only region set to europe north1.0
resource "google_compute_instance" "name_0" {
  name = "my-compute-instance-disk"
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

# a google compute network resource with name terraform network
resource "google_compute_network" "name_1" {
  name = "my-compute-network"
  auto_create_subnetworks = false
}

