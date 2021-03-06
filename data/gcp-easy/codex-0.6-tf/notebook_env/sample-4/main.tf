terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
provider "google" {
  credentials = file("${var.credentials_file}")
  project     = var.project
  region      = var.region
}

# create google notebooks enviroment
resource "google_notebooks_environment" "name_0" {
  name     = "my-notebook-env"
  project  = var.project
  region   = var.region
  instance_type = "BASIC"
  machine_type = "n1-standard-4"
  disk_size_gb = 100
  network = "default"
  subnetwork = "default"
  no_proxy_access = true
  no_public_ip = true
  service_account = "default"
  container_image = "gcr.io/deeplearning-platform-release/tf2-cpu"
  container_image_version = "latest"
  boot_disk_size_gb = 100
  accelerator_type = "NVIDIA_TESLA_T4"
  accelerator_count = 1
  enable_gpu = true
  enable_tpu = false
  python_version = "3.7"
  labels = {
    env = "dev"
  }
}

