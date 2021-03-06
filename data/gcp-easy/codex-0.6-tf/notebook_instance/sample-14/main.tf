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
  name     = "my-notebook-instance"
  zone     = var.zone
  machine_type = "n1-standard-4"
  boot_disk_size_gb = 15
  boot_disk_type = "pd-standard"
  container_image = "gcr.io/deeplearning-platform-release/tf2-cpu"
  container_image_version = "latest"
  service_account = "default"
  network_tags = ["default"]
  no_proxy_access = true
  no_public_ip = true
  no_proxy_access = true
  no_public_ip = true
  no_proxy_access = true
  no_public_ip = true
  no_proxy_access = true
  no_public_ip = true
  no_proxy_access = true
  no_public_ip = true
  no_proxy_access = true
  no_public_ip = true
  no_proxy_access = true
  no_public_ip = true
  no_proxy_access = true
  no_public_ip = true
  no_proxy_access = true
  no_public_ip = true
  no_proxy_access = true
  no_public_ip = true
  no_proxy_access = true
  no_public_ip = true
  no_proxy_access = true
  no_public_ip = true
  no_proxy_access = true
  no_public_ip = true
  no_proxy_access = true
  no_public_ip = true
  no_proxy_access = true
  no_public_ip = true
  no_proxy_access = true
  no_public_ip = true
  no_proxy_access = true
  no_public_ip = true
  no_proxy_access = true
  no_public_ip = true
  no_proxy_access = true
  no_public_ip = true
  no_proxy_access = true
  no_public_ip = true
  no_proxy_access = true
  no_public_ip = true
  no_proxy_access = true
  no_public_ip = true
  no_proxy_access = true
  no_public_ip = true
  no_proxy_access = true
  no_public_ip = true
  no_proxy_access = true
  no_public_ip = true
  no_proxy_access = true
  no_public_ip = true
  no_proxy_access = true
  no_public_ip = true
  no_proxy_access = true
  no_public_ip = true
  no_proxy_access = true
  no_public_ip = true
  no_proxy_access = true
  no_public_ip = true
  no_proxy_access = true
  no_public_ip = true
  no_proxy_access = true
  no_public_ip = true
  no_proxy_access = true
  no_public_ip = true
  no_proxy_access = true
  no_public_ip = true
  no_proxy_access = true
  no_public_ip = true
  no_proxy_access = true
  no_public_ip = true
  no_proxy_access = true
  no_public_ip = true
  no_proxy_access = true
  no_public_ip = true
  no_proxy_access = true
  no_public_ip = true
  no_proxy_access = true
  no_public_ip = true
  no_proxy_access = true
  no_public_ip = true
  no_proxy_access = true
  no_public_ip = true
  no_proxy_access = true
  no_public_ip = true
  no_proxy_access = true
  no_public_ip = true
  no_proxy_access = true
  no_public_ip = true
  no_proxy_access = true
  no_public_ip = true
  no_proxy_access = true
  no_public_ip = true
  no_proxy_access = true
  no_public_ip = true
  no_proxy_access = true
  no_public_ip = true
  no_proxy_access = true
  no
}

