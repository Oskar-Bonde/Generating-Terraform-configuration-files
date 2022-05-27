terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block 
provider "google" {
  credentials = file("${path.module}/account.json")
  project     = "my-project"
  region      = "us-east1"
}

# create composer environment
resource "google_composer_environment" "name_0" {
  name = "my-environment"
  config {
    node_count = 1
    node_config {
      machine_type = "n1-standard-1"
      disk_size_gb = 30
      network = "default"
    }
  }
}

