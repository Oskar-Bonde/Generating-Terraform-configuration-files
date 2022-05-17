terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with only region set to europe north1
provider "google" {
}

# create a CaPool resource. Located in europe west 4, enterprise tier and set publishing options ca cert and crl to true.
resource "google_ca_pool" "name_0" {
  name = "my-ca-pool"
  location = "europe-west4"
  project = "my-project"
  project_id = "my-project"
  name = "my-ca-pool"
  initial_node_count = 1
  min_count = 1
  max_count = 2
  initial_node_count = 3
  machine_type = "n1-standard-1"
  disk {
    image = "debian-cloud/debian-9"
    auto_delete = true
  }

  network_interface {
    network = "default"    
  }
}

