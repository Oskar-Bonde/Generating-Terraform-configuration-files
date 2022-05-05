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
  machine_type = "n1-standard-8"
  boot_disk_size_gb = 50
  boot_disk_type = "pd-standard"
  accelerator_type = "NVIDIA_TESLA_P100"
  accelerator_count = 1
  network = "default"
  # service_account = "default"
  # service_account_scopes = ["https://www.googleapis.com/auth/cloud-platform"]
  # metadata = {
  #   foo = "bar"
  # }
  # tags = ["foo", "bar"]
}

