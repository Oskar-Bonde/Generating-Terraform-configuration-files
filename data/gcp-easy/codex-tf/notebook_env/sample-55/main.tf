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
  project     = var.project
  region      = var.region
}

# create google notebooks enviroment
resource "google_notebooks_environment" "name_0" {
  name = "my-notebook-env"
  project = var.project
  region = var.region
  config {
    image_version = "1.0.0"
    machine_type = "n1-standard-4"
    accelerator_config {
      type = "NVIDIA_TESLA_T4"
      count = 1
    }
    disk_size_gb = 64
    disk_type = "pd-standard"
    network = "default"
    subnetwork = "default"
    no_proxy_access = true
    no_public_ip = true
    no_proxy_access = true
    no_public_ip = true
    labels = {
      env = "dev"
    }
  }
}

