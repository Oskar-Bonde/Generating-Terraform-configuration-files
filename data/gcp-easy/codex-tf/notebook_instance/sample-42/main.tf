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
resource "google_notebooks_instance" "name_0" {
  name         = "my-notebook-instance"
  machine_type = "n1-standard-4"
  zone         = "us-central1-a"
  network      = "default"
  service_account = "default"
  boot_disk_size_gb = 100
  boot_disk_type = "pd-standard"
  no_proxy_access = true
  no_public_ip = true
  no_firewall = true
  no_remove_boot_disk = true
  container_image = "gcr.io/deeplearning-platform-release/tf2-cpu"
  container_image_version = "latest"
  container_command = ["/bin/bash"]
  container_args = ["-c", "echo Hello World"]
}

