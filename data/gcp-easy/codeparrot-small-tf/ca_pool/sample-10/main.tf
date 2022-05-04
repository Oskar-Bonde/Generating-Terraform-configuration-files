terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
provider "google" {
}

# create a CaPool resource 
resource "google_compute_instance_pool" "name_0" {
  name = "my-pool"
  instances = [google_compute_instance.vm_instance.self_link]
}

