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

# create google notebooks enviroment
resource "google_notebooks_environment" "name_0" {
  name          = var.name
  project       = var.project
  region        = var.region
  machine_type  = var.machine_type
  boot_disk_size = var.boot_disk_size
  boot_disk_type = var.boot_disk_type
  network       = var.network
  subnetwork    = var.subnetwork
  no_proxy_access = var.no_proxy_access
  no_public_ip  = var.no_public_ip
  proxy_uri     = var.proxy_uri
  service_account = var.service_account
  container_image = var.container_image
  container_image_project = var.container_image_project
  container_image_version = var.container_image_version
  container_image_family = var.container_image_family
  container_image_fullname = var.container_image_fullname
  container_image_name = var.container_image_name
  container_image_tag = var.container_image_tag
  container_image_digest = var.container_image_digest
  container_image_credentials = var.container_image_credentials
  container_image_credentials_path = var.container_image_credentials_path
  container_image_credentials_json = var.container_image_credentials_json
  container_image_credentials_content = var.container_image_credentials_content
  container_image_credentials_file = var.container_image_credentials_file
  container_image_credentials_file_content = var.container_image_credentials_file_content
  container_image_credentials_file_path = var.container_image_credentials_file_path
  container_image_credentials_file_json = var.container_image_credentials_file_json
  container_image_credentials_file_content = var.container_image_credentials_file_content
  container_image_credentials_file_file = var.container_image_c
}

