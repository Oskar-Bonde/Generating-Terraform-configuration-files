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
  name     = "my-notebook"
  zone     = "us-central1-a"
  machine_type = "n1-standard-4"
  boot_disk_size_gb = 10
  boot_disk_type = "pd-standard"
  accelerator_type = "NVIDIA_TESLA_T4"
  accelerator_count = 1
  network = "default"
  service_account = "my-service-account@my-project.iam.gserviceaccount.com"
  scopes = [
    "https://www.googleapis.com/auth/cloud-platform",
    "https://www.googleapis.com/auth/devstorage.read_only",
    "https://www.googleapis.com/auth/logging.write",
    "https://www.googleapis.com/auth/monitoring",
    "https://www.googleapis.com/auth/servicecontrol",
    "https://www.googleapis.com/auth/service.management.readonly",
    "https://www.googleapis.com/auth/trace.append",
  ]
}

