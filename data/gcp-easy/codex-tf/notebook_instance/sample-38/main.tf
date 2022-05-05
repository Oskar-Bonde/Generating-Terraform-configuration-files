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

# create a notebook instance 
resource "google_notebooks_instance" "name_0" {
  name         = var.name
  machine_type = var.machine_type
  zone         = var.zone
  network      = var.network
  subnetwork   = var.subnetwork
  service_account = var.service_account
  no_public_ip = var.no_public_ip
  no_proxy_access = var.no_proxy_access
  boot_disk_size_gb = var.boot_disk_size_gb
  boot_disk_type = var.boot_disk_type
  accelerator_type = var.accelerator_type
  accelerator_count = var.accelerator_count
  container_image = var.container_image
  container_image_project = var.container_image_project
  container_image_family = var.container_image_family
  container_image_version = var.container_image_version
  container_image_full_name = var.container_image_full_name
  container_image_full_name_prefix = var.container_image_full_name_prefix
  container_image_full_name_suffix = var.container_image_full_name_suffix
  container_image_full_name_latest = var.container_image_full_name_latest
  container_image_full_name_sha = var.container_image_full_name_sha
  container_image_full_name_cos = var.container_image_full_name_cos
  container_image_full_name_ubuntu = var.container_image_full_name_ubuntu
  container_image_full_name_rhel = var.container_image_full_name_rhel
  container_image_full_name_debian = var.container_image_full_name_debian
  container_image_full_name_windows = var.container_image_full_name_windows
  container_image_full_name_tensorflow = var.container_image_full_name_tensorflow
  container_image_full_name_pytorch = var.container_image_full_name_pytorch
  container_image_full_name_jup
}

