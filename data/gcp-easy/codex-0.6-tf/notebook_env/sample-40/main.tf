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

# create google notebooks enviroment
resource "google_notebooks_environment" "name_0" {
  name = "tf-test-env"
  project = "${var.project}"
  zone = "${var.zone}"
  machine_type = "n1-standard-4"
  disk_size_gb = "100"
  container_image_uri = "gcr.io/deeplearning-platform-release/tf2-cpu"
  network = "default"
  service_account = "default"
  no_proxy_access = true
  no_public_ip_access = true
  no_firewall_rules = true
}

