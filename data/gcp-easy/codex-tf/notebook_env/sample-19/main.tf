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
  container_image_project = var.container_image_project
  container_image_family = var.container_image_family
  container_image_repository = var.container_image_repository
  container_image_tag = var.container_image_tag
  container_image_digest = var.container_image_digest
  labels = var.labels
  metadata = var.metadata
  tags = var.tags
  boot_disk_size_gb = var.boot_disk_size_gb
  boot_disk_type = var.boot_disk_type
  kms_key = var.kms_key
  network_tier = var.network_tier
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
  no_proxy_access =
}

