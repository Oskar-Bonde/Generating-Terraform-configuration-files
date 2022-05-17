terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider blockresource "google_compute_instance" "vm_instance_from_tcp" {
  name = "my-compute-instance-from-tcp"
  machine_type = "f1-micro"

  network_interface {
    network = "default"    
    access_config {
    }
  }
}

# create dns policy

resource "google_compute_instance" "name_0" {
  name = "my-compute-instance-from-tcp-tcp"
  machine_type = "f1-micro"

  network_interface {
    network = "default"    
    access_config {
    }
  }
}

