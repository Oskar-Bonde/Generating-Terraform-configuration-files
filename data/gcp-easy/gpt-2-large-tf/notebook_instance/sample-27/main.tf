terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
resource "google_compute_instance" "name_0" {
  name = "my-compute-instance-dev-%%{random_suffix}"
  machine_type = "f1-micro"

  network_interface {
    network = "default"    
    access_config {
    }
  }
}

# create a notebook instance

resource "google_compute_instance" "name_1" {
  name = "my-compute-instance-dev-tcp-%%{random_suffix}"
  machine_type = "f1-micro"

  network_interface {
    network = "default"    
    access_config {
    }
  }
}

