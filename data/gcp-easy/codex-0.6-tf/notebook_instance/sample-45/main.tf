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
  project     = var.project
  region      = var.region
}

# create a notebook instance 
resource "google_ai_platform_notebook_instance" "name_0" {
  name = var.name
  zone = var.zone
  machine_type = var.machine_type
  boot_disk_size_gb = var.boot_disk_size_gb
  boot_disk_type = var.boot_disk_type
  accelerator_type = var.accelerator_type
  accelerator_count = var.accelerator_count
  network = var.network
  subnetwork = var.subnetwork
  no_proxy_access = var.no_proxy_access
  no_public_ip = var.no_public_ip
  service_account = var.service_account
  container_image = var.container_image
  container_image_project = var.container_image_project
  container_image_version = var.container_image_version
  install_gpu_driver = var.install_gpu_driver
  metadata = var.metadata
  tags = var.tags
  labels = var.labels
  network_tags = var.network_tags
  service_account_scopes = var.service_account_scopes
  timeouts {
    create = "10m"
    delete = "10m"
  }
}

