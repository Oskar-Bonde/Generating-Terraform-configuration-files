terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block 
provider "google" {
  credentials = "${file("account.json")}"
  project     = "my-project"
  region      = "us-central1"
}

# create a notebook instance 
resource "google_notebooks_instance" "name_0" {
  name     = "my-notebook"
  vm_image = "projects/deeplearning-platform-release/global/images/tf2-1-2-cpu-jupyter-notebook-1-15"
  machine_type = "n1-standard-4"
  boot_disk_size_gb = 15
  boot_disk_type = "pd-standard"
  accelerator_type = "NVIDIA_TESLA_T4"
  accelerator_count = 1
  network = "default"
  no_proxy_access = true
  no_public_ip = true
  no_firewall = true
  service_account = "my-service-account@my-project.iam.gserviceaccount.com"
}
