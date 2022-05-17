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

# create google notebooks enviroment

resource "google_compute_instance" "name_0" {
  name = "my-compute-instance
}

