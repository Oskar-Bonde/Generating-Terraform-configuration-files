terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with only region set to europe north1-micro, debian-9 image and default network interface
resource "google_compute_instance" "name_0" {
  name = "my-compute-instance-micro"
  machine_type = "f1-micro"

  network_interface {
    network = "default"    
    access_config {
    }
  }
}

# create a node template. Assign a name, set node type to n1-node-96-624
resource "google_compute_instance" "name_1" {
  name = "my-compute-instance-micro-disk"
  machine_type = "f1-micro"

  network_interface {
    network = "default"    
    access_config {
    }
  }
}
