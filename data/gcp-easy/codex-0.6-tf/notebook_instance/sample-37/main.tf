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
resource "google_ai_platform_notebook_instance" "name_0" {
  name     = "my-notebook-instance"
  machine_type = "n1-standard-4"
  zone = "us-central1-a"
  boot_disk_size_gb = 50
  boot_disk_type = "pd-standard"
  network = "default"
  service_account = "default"
  container_image = "gcr.io/deeplearning-platform-release/tf2-cpu"
  container_image_version = "latest"
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

}

