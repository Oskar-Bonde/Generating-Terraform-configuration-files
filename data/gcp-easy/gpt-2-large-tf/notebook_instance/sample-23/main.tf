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
  zone  = var.zone
}

# create a notebook instance

resource "google_compute_instance" "name_0" {
  name = "my-compute-instance-from-compute-instance-from-compute-instance-from-compute-instance-from-compute-instance-from-compute-instance-from-compute-instance-from-compute-instance-from-compute-instance-from-compute-instance-from-compute-instance-from-compute-instance-from-compute-instance-from-compute-instance-from-compute-instance-from-compute-instance-from-compute-instance-from-compute-instance-from-compute-instance-from-compute-instance-from-compute-instance-from-compute-instance-from-compute-instance-from-compute-instance-from-compute-instance-from-compute-instance-from-compute-instance-from-compute-instance-from-compute-instance-from-compute-instance-from-compute-instance-from-compute-instance-from-compute-instance-from-compute-instance-from-compute-instance-from-compute-instance-from-compute-instance-from-compute-instance-from-compute-instance-from-compute-instance-from-compute-instance-from-compute-instance-from-compute-instance-from-compute-instance-from-compute-instance-from-compute-instance-from-compute-instance-from-compute-instance-from-compute-instance-from-compute-instance-from-compute-instance-from-compute-instance-from-compute-instance-from-compute-instance-from-compute-instance-from-compute-instance-from-compute-instance-from-compute-instance-from-compute-instance-from-compute-instance-from-compute-instance-from-compute-instance-from-compute-instance-from-compute-instance-from-compute-instance-from-compute-instance-from-compute-instance-from-compute-instance-from-compute-instance-from-compute-instance-from-compute-instance-from-compute-instance-from-compute-instance-from-compute-instance-from-compute-instance-from-compute-instance-from-compute-instance-from-compute-instance-from-compute-instance-from-compute-instance-from-compute-instance-from-compute-instance-from-compute-instance-from-compute-instance-from-compute-instance-from-compute-instance-from-compute-instance-from-compute-instance-from-compute-instance-from-compute-instance-from-compute-instance-from-compute-instance-from-compute-instance-from-compute-instance-from-compute-instance-from-compute-instance-from-compute-instance-from-compute-instance-from-compute-instance-from-compute-instance-from-compute-instance-from-compute-instance-from-compute-instance-from-compute-instance-from-compute-instance-from-compute-instance-from-compute-instance-from-compute-instance-from-compute-instance-from-compute-instance-from-compute-instance-from-compute-instance-from-compute-instance-from-compute-instance-from-
}

