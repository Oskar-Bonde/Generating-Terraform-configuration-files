terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block 
provider "google" {
  credentials = file("${var.credentials_file}")
  project     = "${var.project}"
  region      = "${var.region}"
}

# create composer environment in region us-central1
resource "google_composer_environment" "name_0" {
  name = "my-composer-environment"
  region = "us-central1"
  config {
    node_config {
      machine_type = "n1-standard-1"
      disk_size_gb = 30
      network = "default"
    }
    software_config {
      image_version = "composer-1.10.0-airflow-1.10.1"
    }
  }
}

