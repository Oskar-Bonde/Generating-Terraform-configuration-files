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
  name = "my-notebook-instance"
  zone = var.zone
  machine_type = "n1-standard-4"
  boot_disk_size_gb = 50
  boot_disk_type = "pd-standard"
  network = "default"
  service_account = "default"
  container_image = "gcr.io/deeplearning-platform-release/tf2-cpu.2-0:m39"
  container_image_project = "deeplearning-platform-release"
  container_image_version = "latest"
  install_gpu_driver = false
  accelerator_type = "none"
  delete_boot_disk = true
  metadata = {
    "proxy-mode" = "service_account"
  }
}

