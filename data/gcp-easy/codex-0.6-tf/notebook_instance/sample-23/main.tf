terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block 
provider "google" {
  credentials = "${file("${var.credentials_file}")}"
  project     = "${var.project}"
  region      = "${var.region}"
}

# create a notebook instance 
resource "google_notebooks_instance" "name_0" {
  name     = "my-notebook-instance"
  vm_image = "projects/deeplearning-platform-release/global/images/tf2-1-2-cpu-20191205"
  machine_type = "n1-standard-4"
  boot_disk_size_gb = 30
  accelerator_type = "NVIDIA_TESLA_T4"
  accelerator_count = 1
  network = "default"
  service_account = "default"
  no_public_ip = true
  no_proxy_access = true
  no_firewall = true
  no_remove_boot_disk = true
  no_delete_vm = true
}

