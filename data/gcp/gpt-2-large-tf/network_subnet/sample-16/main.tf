terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with only region set to europe north1.0
resource "google_compute_instance" "name_0" {
  name = "my-vm-linux"
  machine_type = "f1-micro"

  network_interface {
    network = "default"    
  }
}

# create compute network, give it a name and auto create subnetworks
resource "google_compute_instance" "name_1" {
  name = "my-vm-linux-tcp"
  machine_type = "f1-micro"

  network_interface {
    network = "default"    
  }
}

