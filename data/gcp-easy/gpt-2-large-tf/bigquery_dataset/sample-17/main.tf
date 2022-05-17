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

# bigquery dataset resource
resource "google_compute_instance" "name_0" {
  name = "my-compute-instance-disk-${local.name_suffix}"
  machine_type = "f1-micro"

  network_interface {
    network = "default"    
    access_config {
    }
  }
}
