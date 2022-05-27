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
  project     = var.project
  region      = var.region
}

# create composer environment
resource "google_composer_environment" "name_0" {
  name = "composer-environment-test"
  config {
    node_config {
      machine_type = "n1-standard-1"
      disk_size_gb = 30
      network = "default"
      subnetwork = "default"
      service_account = "composer@${var.project}.iam.gserviceaccount.com"
    }
    software_config {
      image_version = "composer-1.10.2-airflow-1.10.2"
    }
  }
}

