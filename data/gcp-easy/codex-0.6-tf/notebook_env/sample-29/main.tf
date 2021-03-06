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
  zone          = var.zone
  machine_type  = var.machine_type
  network       = var.network
  subnetwork    = var.subnetwork
  service_account = var.service_account
  image_version = var.image_version
  container_image = var.container_image
  boot_disk_size_gb = var.boot_disk_size_gb
  kms_key_name = var.kms_key_name
  labels = var.labels
  metadata = var.metadata
  network_tags = var.network_tags
  no_proxy_access = var.no_proxy_access
  no_public_ip = var.no_public_ip
  no_proxy_access = var.no_proxy_access
  no_public_ip = var.no_public_ip
  post_startup_script = var.post_startup_script
  proxy_uri = var.proxy_uri
  startup_script = var.startup_script
  tags = var.tags
  tpu_ipv4_cidr_block = var.tpu_ipv4_cidr_block
  tpu_service_account = var.tpu_service_account
  tpu_service_account_email = var.tpu_service_account_email
  tpu_service_account_scopes = var.tpu_service_account_scopes
  tpu_type = var.tpu_type
  tpu_zone = var.tpu_zone
  tpu_accelerator_type = var.tpu_accelerator_type
  tpu_accelerator_count = var.tpu_accelerator_count
  tpu_accelerator_core = var.tpu_accelerator_core
  tpu_accelerator_memory = var.tpu_accelerator_memory
  tpu_accelerator_ipv4_cidr_block = var.tpu_accelerator_ipv4_cidr_block
  tpu_accelerator_ipv4_reserved_range = var.tpu_accelerator_ipv4_reserved_range
  tpu_accelerator_ipv4_reserved_range_mask = var.tpu_accelerator_ipv4_reserved_range_mask
  tpu_accelerator_ipv4_reserved_range_mask_length = var.tpu_accelerator_ipv4_reserved_range_mask_length
  tpu_accelerator_ipv4_reserved_range_mask_length = var.tpu_accelerator_ipv4_reserved_range_mask_length
  tpu_accelerator_ipv4_reserved_range_mask_length = var.tpu_accelerator_ipv4_reserved_range_mask_length
  tpu_accelerator_ipv4_reserved_range_mask_length = var.tpu_accelerator_ipv4_reserved_range_mask_length
  tpu_accelerator_ipv4_reserved_range_mask_length = var.tpu_accelerator_ipv4_reserved_range_mask_length
  tpu_accelerator_ipv4_reserved_range_mask_length = var.tpu_accelerator_ipv4_reserved_range_mask_length
  tpu_accelerator_ipv4_reserved_range_mask_length = var.tpu_accelerator_ipv4_reserved_range_mask_length
  tpu_accelerator_ipv4_reserved_range_mask_length = var.tpu_accelerator_ipv4_reserved_range_mask_length
  tpu_accelerator_ipv4_reserved_range_mask_length = var.tpu_accelerator_ipv4_reserved_range_mask_length
  tpu_accelerator_ipv4_reserved_range_mask_length = var.tpu_accelerator_ipv4_reserved_range_mask_length
  tpu_accelerator_ipv4_
}

