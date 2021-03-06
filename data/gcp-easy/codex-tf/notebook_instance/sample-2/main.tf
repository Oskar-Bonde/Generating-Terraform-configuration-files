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
  project     = "my-project"
  region      = "us-central1"
}

# create a notebook instance 
resource "google_notebooks_instance" "name_0" {
  name     = "my-instance"
  vm_image = "projects/deeplearning-platform-release/global/images/tf2-1-2-cpu-latest-cu101"
  machine_type = "n1-standard-4"
  boot_disk_size_gb = 100
  accelerator_type = "NVIDIA_TESLA_T4"
  accelerator_count = 1
  network = "default"
  service_account = "default"
  no_proxy_access = true
  no_public_ip = true
  no_proxy_access = true
  no_public_ip = true
  no_firewall = true
  no_ip_forwarding = true
  no_shielded_secure_boot = true
  no_shielded_vtpm = true
  no_shielded_integrity_monitoring = true
  no_vpc_scratch_nets = true
  no_legacy_endpoints = true
  no_tpm = true
  no_min_cpu_platform = true
  no_auto_delete_boot_disk = true
  no_reserved_ip = true
  no_shielded_vfio = true
  no_shielded_uefi_secure_boot = true
  no_shielded_vfio = true
  no_shielded_uefi_secure_boot = true
  no_shielded_vfio = true
  no_shielded_uefi_secure_boot = true
  no_shielded_vfio = true
  no_shielded_uefi_secure_boot = true
  no_shielded_vfio = true
  no_shielded_uefi_secure_boot = true
  no_shielded_vfio = true
  no_shielded_uefi_secure_boot = true
  no_shielded_vfio = true
  no_shielded_uefi_secure_boot = true
  no_shielded_vfio = true
  no_shielded_uefi_secure_boot = true
  no_shielded_vfio = true
  no_shield
}

