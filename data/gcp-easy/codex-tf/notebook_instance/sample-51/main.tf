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
resource "google_notebooks_instance" "name_0" {
  name     = var.instance_name
  zone     = var.zone
  machine_type = var.machine_type
  boot_disk_size_gb = var.boot_disk_size_gb
  boot_disk_type = var.boot_disk_type
  network = var.network
  subnetwork = var.subnetwork
  no_proxy_access = var.no_proxy_access
  no_public_ip = var.no_public_ip
  service_account = var.service_account
  container_image = var.container_image
  container_image_project = var.container_image_project
  container_image_version = var.container_image_version
  container_image_family = var.container_image_family
  container_image_fullname = var.container_image_fullname
  container_image_fullname_override = var.container_image_fullname_override
  container_image_fullname_aliases = var.container_image_fullname_aliases
  container_image_fullname_aliases_override = var.container_image_fullname_aliases_override
  container_image_fullname_aliases_override_default = var.container_image_fullname_aliases_override_default
  container_image_fullname_aliases_override_default_version = var.container_image_fullname_aliases_override_default_version
  container_image_fullname_aliases_override_default_version_aliases = var.container_image_fullname_aliases_override_default_version_aliases
  container_image_fullname_aliases_override_default_version_aliases_override = var.container_image_fullname_aliases_override_default_version_aliases_override
  container_image_fullname_aliases_override_default_version_aliases_override_default = var.container_image_fullname_aliases_override_default_version_aliases_override_default
  container_image_fullname_aliases_override_
}

