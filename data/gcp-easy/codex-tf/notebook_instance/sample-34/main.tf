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
  vm_image = "projects/deeplearning-platform-release/global/images/tf2-1-0-cu101-20191204"
  zone     = var.zone
  machine_type = "n1-standard-4"
  boot_disk_size_gb = 100
  accelerator_type = "NVIDIA_TESLA_T4"
  accelerator_count = 1
  network = "default"
  service_account = "default"
  no_proxy_access = true
  no_public_ip = true
  no_firewall = true
  no_ip_forwarding = true
  no_remove_boot_disk = true
  no_shielded_secure_boot = true
  no_shielded_vtpm = true
  no_shielded_integrity_monitoring = true
  no_guest_attributes = true
  no_min_cpu_platform = true
  no_shielded_uefi_secure_boot = true
  no_tpm = true
  no_shielded_gvisor = true
  no_oslogin = true
  no_shielded_vfio = true
  no_shielded_vfio_no_iommu = true
  no_shielded_vfio_no_iommu_no_pcie = true
  no_shielded_vfio_no_iommu_no_pcie_no_x = true
  no_shielded_vfio_no_iommu_no_x = true
  no_shielded_vfio_no_x = true
  no_shielded_vfio_no_x_no_pcie = true
  no_shielded_vfio_no_x_no_pcie_no_iommu = true
  no_shielded_vfio_no_x_no_iommu = true
  no_shielded_vfio_no_x_no_iommu_no_pcie = true
  no_shielded_vfio_no_x_no
}

