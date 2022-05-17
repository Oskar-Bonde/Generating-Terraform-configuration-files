terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider blockresource "google_compute_instance" "vm_instance_1" {
  name = "my-compute-instance1-%%{random_suffix}"
  machine_type = "f1-micro"

  network_interface {
    network = "default"    
    access_config {
    }
  }
}

# create a compute instance

resource "google_compute_instance" "name_0" {
  name = "my-compute-instance2-%
}

