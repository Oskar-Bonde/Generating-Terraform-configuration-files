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
  network       = var.network
  subnetwork    = var.subnetwork
  service_account = var.service_account
  install_gpu_driver = var.install_gpu_driver
  container_image = var.container_image
  container_image_project = var.container_image_project
  container_image_family = var.container_image_family
  container_image_version = var.container_image_version
  container_image_sha = var.container_image_sha
  container_image_kms_key = var.container_image_kms_key
  container_image_kms_key_project = var.container_image_kms_key_project
  container_image_kms_key_location = var.container_image_kms_key_location
  container_image_kms_key_ring = var.container_image_kms_key_ring
  container_image_kms_key_crypto_key = var.container_image_kms_key_crypto_key
  container_image_kms_key_version = var.container_image_kms_key_version
  container_image_kms_key_key_algorithm = var.container_image_kms_key_key_algorithm
  container_image_kms_key_key_origin = var.container_image_kms_key_key_origin
  container_image_kms_key_key_purpose = var.container_image_kms_key_key_purpose
  container_image_kms_key_key_rotation_period = var.container_image_kms_key_key_rotation_period
  container_image_kms_key_key_next_rotation_time = var.container_image_kms_key_key_next_rotation_time
  container_image_kms_key_key_rotation_enabled = var.container_image_kms_key_key_rotation_enabled
  container_image_kms_key_key_labels = var.container_image_kms_key_key_labels
  container_image_kms_key_key_protection_level = var.container_image_kms_key_key_protection_level
  container_image_kms_key_key_protection_algorithm = var.container_image_kms_key_key_protection_algorithm
  container_image_kms_key_key_protection_key_source = var.container_image_kms_key_key_protection_key_source
  container_image_kms_key_key_protection_key_ring = var.container_image_kms_key_key_protection_key_ring
  container_image_kms_key_key_protection_crypto_key = var.container_image_kms_key_key_protection_crypto_key
  container_image_kms_key_key_protection_crypto_key_version = var.container_image_kms_key_key_protection_crypto_key_version
  container_image_kms_key_key_protection_key_labels = var.container_image_kms_key_key_protection_key_labels
  container_image_kms_key_key_protection_key_purpose = var.container_image_kms_key_key_protection_key_purpose
  container_image_kms_key_key_protection_key_algorithm = var.container_image_kms_key_key_protection_key_algorithm
  container_image_kms_key_key_protection_key_origin = var.container_image_kms_key_key_protection_key_origin
  container_image_kms_key_key_protection_key_rotation_period = var.container_image_kms_key_key_protection_key_rotation_period
  container_image_kms_key_key_protection_key_next_rotation_time = var.container_image_kms_key_key_protection_key_next_rot
}

