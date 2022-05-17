terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider blockresource "google_compute_instance" "vm_instance_dev" {
  name = "my-compute-instance-dev-%%{random_suffix}"
  machine_type = "f1-micro"

  network_interface {
    network = "default"    
    access_config {
    }
  }
}

# create a node template

resource "google_compute_instance" "name_0" {
  name = "my-compute-instance-dev-http-%%{random_suffix}"
  machine_type = "f1-micro"

  network_interface {
    network = "default"    
    access_config {
    }
  }
}

# create a compute node group resource

resource "google_compute_instance" "name_1" {
  name = "my-compute-instance-dev-http-http-%%{random_suffix}"
  machine_type = "f1-micro"

  network_interface {
    network = "default"    
    access_config {
    }
  }
}

