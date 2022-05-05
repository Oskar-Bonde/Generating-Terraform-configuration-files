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
  boot_disk_size_gb = var.boot_disk_size_gb
  boot_disk_type = var.boot_disk_type
  network_tags = var.network_tags
  service_account = var.service_account
  container_image = var.container_image
  container_image_project = var.container_image_project
  container_image_version = var.container_image_version
  metadata = var.metadata
  tags = var.tags
  labels = var.labels
  no_proxy_access = var.no_proxy_access
  no_public_ip = var.no_public_ip
  no_proxy_access_ports = var.no_proxy_access_ports
  no_ip_forwarding = var.no_ip_forwarding
  no_shielded_integrity_monitoring = var.no_shielded_integrity_monitoring
  no_shielded_secure_boot = var.no_shielded_secure_boot
  no_shielded_vtpm = var.no_shielded_vtpm
  no_vpc_scratch_nets = var.no_vpc_scratch_nets
  no_accelerator = var.no_accelerator
  no_restart_on_failure = var.no_restart_on_failure
  no_shielded_vfio = var.no_shielded_vfio
  no_shielded_uefi_secure_boot = var.no_shielded_uefi_secure_boot
  no_min_cpu_platform = var.no_min_cpu_platform
  no_deletion_protection = var.no_deletion_protection
  no_legacy_abac = var.no_legacy_abac
  no_oslogin = var.no_oslogin
  no_shielded_graphics = var.no_shielded_graphics
  no_shielded_user_data = var.no_shielded_user
}

