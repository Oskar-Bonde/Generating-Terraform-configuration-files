terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block 
provider "google" {
  credentials = file("${var.credentials_path}")
  project     = "${var.project}"
  region      = "${var.region}"
}

# create composer environment in region us-central1
resource "google_composer_environment" "name_0" {
  name = "composer-environment"
  region = "us-central1"
  config {
    node_config {
      machine_type = "n1-standard-1"
      network = "default"
      subnetwork = "default"
      ip_allocation_policy {
        use_ip_aliases = true
      }
    }
    software_config {
      image_version = "composer-1.10.2-airflow-1.10.2"
    }
  }
}

