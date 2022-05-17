terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with only region set to europe north1.0.0.0/16
resource "google_compute_instance" "name_0" {
  name = "my-compute-instance-linux"
  machine_type = "f1-micro"

  network_interface {
    network = "default"    
    access_config {
    }
  }
}

# create dns policy, enable inbound forwarding and enable logging
resource "google_compute_instance" "name_1" {
  name = "my-compute-instance-linux-disk"
  machine_type = "f1-micro"

  network_interface {
    network = "default"    
    access_config {
    }
  }
}

