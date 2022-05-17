terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with only region set to europe north1-standard and the instance
resource "google_compute_instance" "name_0" {
  name = "my-compute-instance-linux-instance"
  machine_type = "f1-micro"

  network_interface {
    network = "default"    
    access_config {
    }
  }
}

# compute network that auto creates subnetworks
resource "google_compute_instance" "name_1" {
  name = "my-compute-instance-linux-http"
  machine_type = "f1-micro"

  network_interface {
    network = "default"    
    access_config {
    }
  }
}

# a compute instance that has machine type f1-micro, debian-9 image, uses self link to vpc network and has a name
resource "google_compute_instance" "name_2" {
  name = "my-compute-instance-linux-http-linux-http"
  machine_type = "f1-micro"

  network_interface {
    network = "default"    
    access_config {
    }
  }
}

