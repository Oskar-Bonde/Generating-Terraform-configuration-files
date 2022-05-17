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

# resource block, sql database instance

resource "google_compute_instance" "name_0" {
  name = "my-compute-instance-disk-${random_suffix}"
  machine_type = "f1-micro"

  network_interface {
    network
}

# create a sql database
}

