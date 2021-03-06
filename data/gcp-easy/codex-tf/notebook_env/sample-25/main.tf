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
  name = "my-notebook-env"
  instance_type = "BASIC"
  boot_disk_size_gb = 15
  machine_type = "n1-standard-4"
  network = "default"
  subnetwork = "default"
  no_proxy_access = true
  no_public_ip = true
  no_proxy_access = true
  no_public_ip = true
  service_account = "default"
  container_image = "gcr.io/deeplearning-platform-release/tf2-cpu"
  container_image_project = "deeplearning-platform-release"
  container_image_version = "latest"
  labels = {
    env = "dev"
  }
}

