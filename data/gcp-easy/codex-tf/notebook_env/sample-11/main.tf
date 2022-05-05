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

# create google notebooks enviroment
resource "google_notebooks_environment" "name_0" {
  name        = "my-notebook-env"
  project     = var.project
  region      = var.region
  machine_type = "n1-standard-4"
  image_version = "1.0.0"
  network = "default"
  subnetwork = "default"
  service_account = "default"
  boot_disk_size_gb = 100
  boot_disk_type = "pd-standard"
  no_proxy_access = true
  no_public_ip_access = true
  no_proxy_access = true
  no_public_ip_access = true
  no_proxy_access = true
  no_public_ip_access = true
  no_proxy_access = true
  no_public_ip_access = true
  no_proxy_access = true
  no_public_ip_access = true
  no_proxy_access = true
  no_public_ip_access = true
  no_proxy_access = true
  no_public_ip_access = true
  no_proxy_access = true
  no_public_ip_access = true
  no_proxy_access = true
  no_public_ip_access = true
  no_proxy_access = true
  no_public_ip_access = true
  no_proxy_access = true
  no_public_ip_access = true
  no_proxy_access = true
  no_public_ip_access = true
  no_proxy_access = true
  no_public_ip_access = true
  no_proxy_access = true
  no_public_ip_access = true
  no_proxy_access = true
  no_public_ip_access = true
  no_proxy_access = true
  no_public_ip_access = true
  no_proxy_access = true
  no_public_ip_access = true
  no_proxy_access = true
  no_public_ip_access = true
  no_proxy_access = true
  no_public_ip_access = true
  no_proxy_access = true
  no_public
}

