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
  name            = var.name
  project         = var.project
  region          = var.region
  zone            = var.zone
  machine_type    = var.machine_type
  network         = var.network
  subnetwork      = var.subnetwork
  service_account = var.service_account
  image_type      = var.image_type
  boot_disk_size  = var.boot_disk_size
  accelerator_type = var.accelerator_type
  accelerator_count = var.accelerator_count
}

