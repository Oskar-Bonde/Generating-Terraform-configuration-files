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
  project     = "my-project"
  region      = "us-central1"
}

# create google notebooks enviroment
resource "google_notebooks_environment" "name_0" {
  name     = "my-notebook-env"
  project  = "my-project"
  region   = "us-central1"
  instance_type = "n1-standard-4"
  boot_disk_size_gb = 100
  machine_type = "n1-standard-4"
  network = "default"
  subnetwork = "default"
  no_proxy_access = true
  no_public_ip_access = true
  no_proxy_access = true
  service_account = "default"
  container_image = "gcr.io/deeplearning-platform-release/tf2-cpu.2-0:m39"
  container_image_project = "deeplearning-platform-release"
  container_image_version = "tf2-cpu.2-0:m39"
  container_image_family = "tf2-cpu"
  container_image_fullname = "gcr.io/deeplearning-platform-release/tf2-cpu.2-0:m39"
  container_image_fullname_project = "deeplearning-platform-release"
  container_image_fullname_version = "tf2-cpu.2-0:m39"
  container_image_fullname_family = "tf2-cpu"
  container_image_fullname_digest = "sha256:b9f2e8e8d8a2b3c3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3f3"
  container_image_fullname_tag = "tf2-cpu.2-0:m39"
  container_image_fullname_tag_project = "deeplearning-platform-release"
  container_image_fullname_tag_version = "tf2-cpu.2-0:m39"
  container_image_fullname_tag_family = "tf2-cpu"
  container_image_fullname_tag_digest = "sha256:b9f2e
}

