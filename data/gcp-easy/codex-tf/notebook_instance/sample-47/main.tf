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
  name     = "my-notebook-instance"
  vm_image = "projects/deeplearning-platform-release/global/images/tf2-1-2-cpu-1-15-notebook-20200403"
  zone     = var.zone
  machine_type = "n1-standard-4"
  boot_disk_size_gb = 100
  boot_disk_type = "pd-standard"
  network = "default"
  service_account = "default"
  no_proxy_access = true
  no_public_ip = true
  no_proxy_access = true
  no_public_ip = true
  no_firewall = true
  no_route_traffic = true
  no_ip_forwarding = true
  no_accelerator = true
  no_shielded_vm = true
  no_shielded_integrity_monitoring = true
  no_shielded_secure_boot = true
  no_shielded_vtpm = true
  no_shielded_vfio = true
  no_shielded_uefi_secure_boot = true
  no_shielded_firmware_setup = true
  no_shielded_gvisor = true
  no_shielded_vfio = true
  no_shielded_vfio = true
  no_shielded_vfio = true
  no_shielded_vfio = true
  no_shielded_vfio = true
  no_shielded_vfio = true
  no_shielded_vfio = true
  no_shielded_vfio = true
  no_shielded_vfio = true
  no_shielded_vfio = true
  no_shielded_vfio = true
  no_shielded_vfio = true
  no_shielded_vfio = true
  no_shielded_vfio = true
  no_shielded_vfio = true
  no_shielded_vfio = true
  no_shielded_vfio = true
  no_shielded_
}

