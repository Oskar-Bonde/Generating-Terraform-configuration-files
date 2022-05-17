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

# a compute instance resource

resource "google_compute_instance" "name_0" {
  name = "my-compute-instance-disk
}

# an output block
}

