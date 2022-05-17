terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
provider "google-beta" {
  project = var.project_id
  region  = var.region
  zone    = var.zone
}

# data block with google compute zones

resource "google_compute_instance" "name_0" {
  name = "my-compute-instance-disk-1"
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

# make a compute instance

resource "google_compute_instance" "name_1" {
  name = "my-compute-instance-disk-2"
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

