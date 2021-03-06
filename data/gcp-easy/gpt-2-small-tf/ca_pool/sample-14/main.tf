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
  name = "my-ca-pool-%{random_suffix}"
  location = "us-central1"
  project = "my-project"
  pool_type = "pool"
  disk {
    image = "debian-cloud/debian-9"
  }

  network_interface {
    network = "default"    
    access_config {
    }
  }
}

