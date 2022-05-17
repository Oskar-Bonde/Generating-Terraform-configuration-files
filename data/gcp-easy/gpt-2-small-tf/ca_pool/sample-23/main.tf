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

# create a CaPool resource
resource "google_ca_pool" "name_0" {
  name = "my-ca-pool"
  location = "us-central1"
  project = "my-project"
  project_id = "my-project"
  num_nodes = 1
  num_pools = 1
}

