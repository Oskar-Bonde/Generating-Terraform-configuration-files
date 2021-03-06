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

  config {
    machine_type = "f1-micro"
    ip_configuration {
      public_ip_address = "10.0.0.5"
    }
  }
}

