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
  project     = "${var.project}"
  region      = "${var.region}"
}

# create a notebook instance 
resource "google_notebooks_instance" "name_0" {
  name = "my-notebook-instance"
  zone = "us-central1-a"
  machine_type = "n1-standard-4"
  boot_disk_size_gb = 15
  boot_disk_type = "pd-standard"
  network = "default"
  no_proxy_access = true
  no_public_ip = true
  service_account = "default"
  container_image = "gcr.io/deeplearning-platform-release/tf2-cpu"
  container_image_version = "latest"
  accelerator_type = "NVIDIA_TESLA_T4"
  accelerator_count = 1
  delete_boot_disk = true
  metadata = {
    key = "value"
  }
  tags = ["tag1", "tag2"]
}

