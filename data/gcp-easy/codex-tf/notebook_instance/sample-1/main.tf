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
  no_proxy_access = var.no_proxy_access
  no_public_ip = var.no_public_ip
  no_proxy_access = var.no_proxy_access
  no_public_ip = var.no_public_ip
  no_proxy_access = var.no_proxy_access
  no_public_ip = var.no_public_ip
  no_proxy_access = var.no_proxy_access
  no_public_ip = var.no_public_ip
  no_proxy_access = var.no_proxy_access
  no_public_ip = var.no_public_ip
  no_proxy_access = var.no_proxy_access
  no_public_ip = var.no_public_ip
  no_proxy_access = var.no_proxy_access
  no_public_ip = var.no_public_ip
  no_proxy_access = var.no_proxy_access
  no_public_ip = var.no_public_ip
  no_proxy_access = var.no_proxy_access
  no_public_ip = var.no_public_ip
  no_proxy_access = var.no_proxy_access
  no_public_ip = var.no_public_ip
  no_proxy_access = var.no_proxy_access
  no_public
}

