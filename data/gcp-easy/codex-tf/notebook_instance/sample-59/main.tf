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
  name     = var.name
  zone     = var.zone
  machine_type = var.machine_type
  service_account = var.service_account
  boot_disk_size_gb = var.boot_disk_size_gb
  boot_disk_type = var.boot_disk_type
  accelerator_type = var.accelerator_type
  accelerator_count = var.accelerator_count
  network = var.network
  subnetwork = var.subnetwork
  no_proxy_access = var.no_proxy_access
  no_public_ip = var.no_public_ip
  no_proxy_access = var.no_proxy_access
  no_public_ip = var.no_public_ip
  tags = var.tags
  metadata = var.metadata
  install_gpu_driver = var.install_gpu_driver
  container_image = var.container_image
  container_image_project = var.container_image_project
  container_image_version = var.container_image_version
  container_image_certificate = var.container_image_certificate
  container_image_certificate_project = var.container_image_certificate_project
  container_image_certificate_version = var.container_image_certificate_version
  container_image_certificate_sha256 = var.container_image_certificate_sha256
  container_image_certificate_key = var.container_image_certificate_key
  container_image_certificate_key_project = var.container_image_certificate_key_project
  container_image_certificate_key_version = var.container_image_certificate_key_version
  container_image_certificate_key_sha256 = var.container_image_certificate_key_sha256
  container_image_certificate_key_key = var.container_image_certificate_key_key
  container_image_certificate_key_key_project = var.container_image_certificate_key_key_project
  container_image_certificate_key_key_version = var
}

