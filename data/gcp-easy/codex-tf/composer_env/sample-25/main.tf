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
  name     = "${var.composer_environment_name}"
  region   = "${var.region}"
  config {
    node_config {
      machine_type = "${var.machine_type}"
      disk_size_gb = "${var.disk_size_gb}"
    }
    software_config {
      image_version = "${var.image_version}"
    }
  }
}

