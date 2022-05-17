terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
provider "google-beta" {
}

# create a compute instance

resource "google_compute_instance" "name_0" {
  name = "my-compute-instance-%%{random
}

