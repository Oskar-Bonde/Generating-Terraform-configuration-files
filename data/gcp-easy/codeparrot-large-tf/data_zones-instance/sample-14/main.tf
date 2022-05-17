terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
provider "google" {
}

# data block with google compute zones
data "google_compute_zones" "name_0" {
}

# make a compute instance
resource "google_compute_instance" "name_1" {
  name = "my-compute-instance-%%{random_suffix}"
  machine_type = "f1-micro"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = "default"    
    access_config {
    }
  }
}

