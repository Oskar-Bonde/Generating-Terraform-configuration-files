terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block 
provider "google" {
  credentials = "${file("account.json")}"
  project     = "my-project"
  region      = "us-central1"
}

# create a notebook instance 
resource "google_notebooks_instance" "name_0" {
  name     = "my-notebook"
  vm_image = "tf-latest-cpu"
  machine_type = "n1-standard-4"
  boot_disk_size_gb = 15
  boot_disk_type = "pd-standard"
  no_proxy_access = true
  no_public_ip = true
  no_firewall = true
  no_remove_boot_disk = true
  no_delete_vm = true
  no_upgrade = true
  no_ip_forwarding = true
  no_shielded_vm_secure_boot = true
  no_shielded_vm_vtpm = true
  no_shielded_vm_integrity_monitoring = true
  no_shielded_vm_encryption = true
  no_shielded_vm_uefi_secure_boot = true
  no_shielded_vm_encryption = true
  no_shielded_vm_encryption = true
  no_shielded_vm_encryption = true
  no_shielded_vm_encryption = true
  no_shielded_vm_encryption = true
  no_shielded_vm_encryption = true
  no_shielded_vm_encryption = true
  no_shielded_vm_encryption = true
  no_shielded_vm_encryption = true
  no_shielded_vm_encryption = true
  no_shielded_vm_encryption = true
  no_shielded_vm_encryption = true
  no_shielded_vm_encryption = true
  no_shielded_vm_encryption = true
  no_shielded_vm_encryption = true
  no_shielded_vm_encryption = true
  no_shielded_vm_encryption = true
  no_shielded_vm_encryption = true
  no_shielded_vm_encryption = true
  no_shielded_vm_encryption = true
  no_shielded_vm_encryption = true
  no_shielded_vm_encryption = true
  no_shielded_vm_encryption = true
  no_shielded_vm_encryption = true
  no_shielded_vm_encryption = true
  no_shielded_vm_encryption = true
  no_shielded_vm_encryption = true
  no_shielded_vm_encryption = true
  no_shielded_vm_encryption = true
  no_shielded_vm_encryption = true
  no_shielded_vm_encryption = true
  no_shielded_vm_encryption = true
  no_shielded_vm_encryption = true
  no_shielded_vm_encryption = true
  no_shielded_vm_encryption = true
  no_shielded_vm_encryption = true
  no_shielded_vm_encryption = true
  no_shielded_vm_encryption = true
  no_shielded_vm_encryption = true
  no_shielded_vm_encryption = true
  no_shielded_vm_encryption = true
  no_shielded_vm_encryption = true
  no_shielded_vm_encryption = true
  no_shielded_vm_encryption = true
  no_shielded_vm_encryption = true
  no_shielded_vm_encryption = true
  no_shielded_vm_encryption = true
  no_shielded_vm_encryption = true
  no_shielded_vm_encryption = true
  no_shielded_vm_encryption = true
  no_shielded_vm_encryption = true
  no_shielded_vm_encryption = true
  no_shielded_vm_encryption = true
  no_shielded_vm_encryption = true
  no_shielded_vm_encryption = true
  no_shielded_vm_encryption = true
  no_shielded_vm_encryption = true
  no_shielded_vm_encryption = true
  no_shielded_vm_encryption = true
  no_shielded_vm_encryption = true
  no_shielded_vm_encryption = true
  no_shielded_vm_encryption = true
  no_shield
}

