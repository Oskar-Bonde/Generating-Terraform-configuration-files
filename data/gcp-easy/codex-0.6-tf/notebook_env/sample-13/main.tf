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

# create google notebooks enviroment
resource "google_notebooks_environment" "name_0" {
  name = var.name
  zone = var.zone
  machine_type = var.machine_type
  disk_size_gb = var.disk_size_gb
  network = var.network
  subnetwork = var.subnetwork
  service_account = var.service_account
  image_version = var.image_version
  container_image = var.container_image
  container_image_version = var.container_image_version
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
  no_proxy_
}

