terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block 
provider "google" {
  credentials = file("account.json")
  project     = "my-project"
  region      = "us-central1"
}

# create a notebook instance 
resource "google_ai_platform_notebook_instance" "name_0" {
  name     = "my-notebook-instance"
  zone     = "us-central1-a"
  machine_type = "n1-standard-4"
  boot_disk_size_gb = 100
  boot_disk_type = "pd-standard"
  accelerator_type = "NVIDIA_TESLA_T4"
  accelerator_count = 1
  network = "default"
  subnetwork = "default"
  no_proxy_access = true
  no_public_ip = true
  service_account = "default"
  container_image = "gcr.io/deeplearning-platform-release/tf2-cpu.2-0:m39"
  container_image_project = "deeplearning-platform-release"
  metadata = {
    install-nvidia-driver = "True"
  }
}

