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
resource "google_ai_platform_notebook_instance" "name_0" {
  name         = "my-notebook-instance"
  zone         = var.zone
  machine_type = "n1-standard-4"
  network      = "default"
  service_account = "default"
  boot_disk_size_gb = 100
  boot_disk_type = "pd-standard"
  accelerator_type = "NVIDIA_TESLA_T4"
  accelerator_count = 1
  container_image = "gcr.io/deeplearning-platform-release/tf2-cpu"
  container_image_version = "latest"
  metadata = {
    install-nvidia-driver = "True"
  }
}

