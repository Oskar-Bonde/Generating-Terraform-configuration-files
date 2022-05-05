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

# create a notebook instance 
resource "google_notebooks_instance" "name_0" {
  name         = "my-notebook-instance"
  machine_type = "n1-standard-4"
  zone         = "us-central1-a"
  network      = "default"
  service_account = "default"
  boot_disk_size_gb = 100
  boot_disk_type = "pd-standard"
  accelerator_type = "NVIDIA_TESLA_T4"
  accelerator_count = 1
  no_proxy_access = true
  no_public_ip = true
  no_proxy_access = true
  no_public_ip = true
  no_proxy_access = true
  no_public_ip = true
  no_proxy_access = true
  no_public_ip = true
  no_proxy_access = true
  no_public_ip = true
  no_proxy_access = true
  no_public_ip = true
  no_proxy_access = true
  no_public_ip = true
  no_proxy_access = true
  no_public_ip = true
  no_proxy_access = true
  no_public_ip = true
  no_proxy_access = true
  no_public_ip = true
  no_proxy_access = true
  no_public_ip = true
  no_proxy_access = true
  no_public_ip = true
  no_proxy_access = true
  no_public_ip = true
  no_proxy_access = true
  no_public_ip = true
  no_proxy_access = true
  no_public_ip = true
  no_proxy_access = true
  no_public_ip = true
  no_proxy_access = true
  no_public_ip = true
  no_proxy_access = true
  no_public_ip = true
  no_proxy_access = true
  no_public_ip = true
  no_proxy_access = true
  no_public_ip = true
  no_proxy_access = true
  no_public_ip = true
  no_proxy_access = true
  no_public_ip
}

