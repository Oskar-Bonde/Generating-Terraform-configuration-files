# Terraform block with google provider
terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block 
provider "google" {
  region = "europe-north1"
}

# data block with google compute zones
data "google_compute_zones" "name_0" {
  region = "europe-west4"
  status = "UP"
  project = "terraform-338909"
}

# make a compute instance
resource "google_compute_instance" "name_1" {
  name = "vm"
  machine_type = "f1-micro"
  zone         = data.google_compute_zones.name_0.names[0]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = "default"
  }
}

