terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block 
provider "google" {
  credentials = file("account.json")
  project     = "my-project"
  region      = "us-central1"
}

# create composer environment
resource "google_composer_environment" "name_0" {
  name = "my-environment"
  config {
    node_count = 3
    node_config {
      machine_type = "n1-standard-1"
      disk_size_gb = 10
      service_account = "composer@my-project.iam.gserviceaccount.com"
    }
  }
}

