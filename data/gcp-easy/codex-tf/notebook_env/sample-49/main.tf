terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
provider "google" {
  credentials = file("${path.module}/../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../
}

# create google notebooks enviroment
resource "google_notebooks_environment" "name_0" {
  name = "tf-test-%s"
  project = "terraform-test-%s"
  zone = "us-central1-a"
  machine_type = "n1-standard-4"
  disk_size_gb = 15
  image_version = "1.0.0"
  network = "default"
  service_account = "default"
  container_image = "gcr.io/deeplearning-platform-release/tf2-cpu"
  container_image_version = "latest"
  accelerator_type = "nvidia-tesla-k80"
  accelerator_count = 1
  install_gpu_driver = true
  boot_disk_size_gb = 15
  network_tier = "PREMIUM"
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
  no_public_ip_access =
}

