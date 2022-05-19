terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block 
provider "google" {
  credentials = file("account.json")
  project     = "my-project"
  region      = "us-central1"
}

# data block with google compute zones
data "google_compute_zones" "name_0" {
  status = "UP"
}

# make a compute instance
resource "google_compute_instance" "name_1" {
  name         = "instance-1"
  machine_type = "f1-micro"
  zone         = data.google_compute_zones.name_0.names[0]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = "default"

    access_config {
      // Include this section to give the VM an external ip address
    }
  }
}

