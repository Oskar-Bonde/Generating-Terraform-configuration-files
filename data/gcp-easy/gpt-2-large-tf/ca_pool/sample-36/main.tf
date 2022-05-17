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

# create a CaPool resource

resource "google_compute_instance" "name_0" {
  name = "my-compute-instance-%%{random_suffix}"
  machine_type = "f1-micro"

  network_interface {
    network = "default"    
    access_config {
    }
  }
}
