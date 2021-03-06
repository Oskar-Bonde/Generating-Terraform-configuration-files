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
  vm_image = "projects/deeplearning-platform-release/global/images/tf2-1-2-cpu-1-15-cu101"
  machine_type = "n1-standard-4"
  boot_disk_size_gb = 100
  boot_disk_type = "pd-standard"
  accelerator_type = "NVIDIA_TESLA_T4"
  accelerator_count = 1
  network = "default"
  subnetwork = "default"
  no_public_ip = true
  no_proxy_access = true
  no_firewall = true
  service_account = "default"
  default_accelerator_count = 1
  default_accelerator_type = "NVIDIA_TESLA_T4"
  default_boot_disk_size_gb = 100
  default_boot_disk_type = "pd-standard"
  default_machine_type = "n1-standard-4"
  default_no_public_ip = true
  default_no_proxy_access = true
  default_no_firewall = true
  default_service_account = "default"
  default_kms_key = "projects/deeplearning-platform-release/locations/us-central1/keyRings/release/cryptoKeys/tf-2-1-2-cpu-1-15-cu101"
  default_network = "default"
  default_subnetwork = "default"
  default_labels = {
    "key1" = "value1"
    "key2" = "value2"
  }
  default_metadata = {
    "key1" = "value1"
    "key2" = "value2"
  }
  default_tags = ["tag1", "tag2"]
}

