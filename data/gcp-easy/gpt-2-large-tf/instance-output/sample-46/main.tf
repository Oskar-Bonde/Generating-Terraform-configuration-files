terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider blockresource "google_compute_instance" "vm_instance_disk" {
  name = "my-compute-instance-disk-%%{random_suffix}"
  machine_type = "f1-micro"

  network_interface {
    network = "default"    
    access_config {
    }
  }
}

# a compute instance resource

resource "google_compute_instance" "name_0" {
  name = "my-compute-instance-disk-disk-1"
  machine_type = "f1-micro"

  network_interface {
    network = "default"    
    access_config {
    }
  }
}

# an output block

resource "google_compute_instance" "name_1" {
  name = "my-compute-instance-disk-1-1"
  machine_type = "f1-micro"

  network_interface {
    network = "default"    
    access_config {
    }
  }
}
