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
  name          = var.name
  project       = var.project
  region        = var.region
  machine_type  = var.machine_type
  network       = var.network
  subnetwork    = var.subnetwork
  service_account = var.service_account
  boot_disk_size_gb = var.boot_disk_size_gb
  boot_disk_type = var.boot_disk_type
  accelerator_type = var.accelerator_type
  accelerator_count = var.accelerator_count
  image_version = var.image_version
  container_image_uri = var.container_image_uri
  container_image_project = var.container_image_project
  container_image_family = var.container_image_family
  container_image_repository = var.container_image_repository
  container_image_tag = var.container_image_tag
  container_image_digest = var.container_image_digest
  install_gpu_driver = var.install_gpu_driver
  install_nvidia_driver = var.install_nvidia_driver
  install_nvidia_runtime = var.install_nvidia_runtime
  install_nvidia_cuda_toolkit = var.install_nvidia_cuda_toolkit
  install_nvidia_cudnn = var.install_nvidia_cudnn
  install_nvidia_tensorrt = var.install_nvidia_tensorrt
  install_nvidia_cuda_extras = var.install_nvidia_cuda_extras
  install_nvidia_cuda_extras_version = var.install_nvidia_cuda_extras_version
  install_nvidia_cuda_extras_repository = var.install_nvidia_cuda_extras_repository
  install_nvidia_cuda_extras_key_server = var.install_nvidia_cuda_extras_key_server
  install_nvidia_cuda_extras_key_fingerprint = var.install_nvidia_cuda_extras
}

