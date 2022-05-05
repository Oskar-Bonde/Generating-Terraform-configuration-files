terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block 
provider "google" {
  credentials = file("${path.module}/credentials.json")
  project     = "my-project"
  region      = "us-central1"
}

# create a notebook instance 
resource "google_notebooks_instance" "name_0" {
  name     = "my-notebook"
  vm_image = "projects/deeplearning-platform-release/global/images/tf2-1-0-cu101-20200707"
  machine_type = "n1-standard-4"
  boot_disk_size_gb = 100
  accelerator_type = "NVIDIA_TESLA_T4"
  accelerator_count = 1
  network = "default"
  subnetwork = "default"
  no_public_ip = true
  no_proxy_access = true
  no_firewall = true
  service_account = "default"
  tags = ["my-notebook"]
}

