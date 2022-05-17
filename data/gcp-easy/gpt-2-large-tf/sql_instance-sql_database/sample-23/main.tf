terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
provider "google-beta" {
}

# resource block, sql database instance

resource "google_compute_instance" "name_0" {
  name = "my-compute-instance-disk-${random_suffix}"
  machine_type = "f1-micro"

  network_interface {
    network = "default"    
    access_config {
    }
  }
}

# create a sql database

resource "google_compute_instance" "name_1" {
  name = "my-compute-instance-disk-${random_suffix}"
  machine_type = "f1-micro"

  network_interface {
    network = "default"    
    access_config {
    }
  }
}

