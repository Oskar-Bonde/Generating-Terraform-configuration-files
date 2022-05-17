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
}

# resource block, sql database instance

resource "google_compute_instance" "name_0" {
  name = "my-compute-instance-linux-%%{random_suffix}"
  machine_type = "f1-micro"

  network_interface {
   
}

# create a sql database
}

