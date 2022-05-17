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
resource "google_ca_pool" "name_0" {
  name = "my-ca-pool"
  location = "us-central1"
  resource_group_name = "${google_resource_group.resource_group.name}"
  network_interface {
    network = "default"    
    access_config {
    }
  }
}

