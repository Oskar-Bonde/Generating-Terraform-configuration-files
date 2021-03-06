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
  project = "my-project"
  pool_type = "pool"
  project_id = "my-project"
  region = "us-central1"
  service_account = "default"
  labels = {
    "my-project-label" = "my-project-label"
  }
}

