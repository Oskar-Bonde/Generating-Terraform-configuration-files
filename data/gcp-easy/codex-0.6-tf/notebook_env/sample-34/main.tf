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
  name          = var.name
  project       = var.project
  region        = var.region
  machine_type  = var.machine_type
  boot_disk_size = var.boot_disk_size
  container_image = var.container_image
  network       = var.network
  subnetwork    = var.subnetwork
  no_proxy_access = var.no_proxy_access
  no_public_ip  = var.no_public_ip
  no_proxy_access = var.no_proxy_access
  no_public_ip  = var.no_public_ip
  no_proxy_access = var.no_proxy_access
  no_public_ip  = var.no_public_ip
  no_proxy_access = var.no_proxy_access
  no_public_ip  = var.no_public_ip
  no_proxy_access = var.no_proxy_access
  no_public_ip  = var.no_public_ip
  no_proxy_access = var.no_proxy_access
  no_public_ip  = var.no_public_ip
  no_proxy_access = var.no_proxy_access
  no_public_ip  = var.no_public_ip
  no_proxy_access = var.no_proxy_access
  no_public_ip  = var.no_public_ip
  no_proxy_access = var.no_proxy_access
  no_public_ip  = var.no_public_ip
  no_proxy_access = var.no_proxy_access
  no_public_ip  = var.no_public_ip
  no_proxy_access = var.no_proxy_access
  no_public_ip  = var.no_public_ip
  no_proxy_access = var.no_proxy_access
  no_public_ip  = var.no_public_ip
  no_proxy_access = var.no_proxy_access
  no_public_ip  = var.no_public_ip
  no_proxy_access = var.no_proxy_access
  no_public_ip  = var.no_public_ip
  no_proxy_access = var.no_proxy_access
  no_public_ip  = var.no_public_ip
  no_proxy_access = var.no_proxy_access
  no_public_ip  = var.no_public_ip
  no_proxy_access = var.no_proxy_access
  no_public_ip  = var.no_public_ip
  no_proxy_access = var.no_proxy_access
  no_public_ip  = var.no_public_ip
  no_proxy_access = var.no_proxy_access
  no_public_ip  = var.no_public_ip
  no_proxy_access = var.no_proxy_access
  no_public_ip  = var.no_public_ip
  no_proxy_access = var.no_proxy_access
  no_public_ip  = var.no_public_ip
  no_proxy_access = var.no_proxy_access
  no_public_ip  = var.no_public_ip
  no_proxy_access = var.no_proxy_access
  no_public_ip  = var.no_public_ip
  no_proxy_access = var.no_proxy_access
  no_public_ip  = var.no_public_ip
  no_proxy_access = var.no_proxy_access
  no_public_ip  = var.no_public_ip
  no_proxy_access = var.no_proxy_access
  no_public_ip  = var.no_public_ip
  no_proxy_access = var.no_proxy_access
  no_public_ip  = var.no_public_ip
  no_proxy_access = var.no_proxy_access
  no_public_ip  = var.no_public_ip
  no_proxy_access = var.no_proxy_access
  no_public_ip  = var.no_public_ip
  no_proxy_access = var.no_proxy_access
  no_public_ip  = var.no_public_ip
}

