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

# create composer environment in region us-central1
resource "google_composer_environment" "name_0" {
  name = "my-composer-environment"
  region = "us-central1"
  machine_type = "f1-micro"
  network_config {
    network = "default"
    ip_allocation_policy {
      cluster_secondary_range_name = "my-secondary-range"
      services_secondary_range_name  = "my-services-secondary-range"
    }
  }
}

