terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
provider "google" {
  project = "my-project"
  region  = "us-central1"
}

# create google notebooks enviroment
resource "google_notebooks_environment" "name_0" {
  name = "my-notebooks-env"
  project = "my-project"
  region = "us-central1"
  machine_type = "n1-standard-4"
  network = "default"
  subnetwork = "default"
  install_gpu_driver = true
  container_image_uri = "gcr.io/deeplearning-platform-release/tf2-cpu.2-0:m39"
  service_account = "my-service-account@my-project.iam.gserviceaccount.com"
  boot_disk_size_gb = 100
  boot_disk_type = "pd-standard"
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
  no_
}

