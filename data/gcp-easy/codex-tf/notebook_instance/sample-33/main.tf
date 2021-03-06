terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block 
provider "google" {
  credentials = file("${path.module}/credentials.json")
  project     = "my-project"
  region      = "us-central1"
}

# create a notebook instance 
resource "google_ai_platform_notebook_instance" "name_0" {
  name     = "my-notebook-instance"
  zone     = "us-central1-a"
  machine_type = "n1-standard-4"
  boot_disk_size_gb = 15
  boot_disk_type = "pd-standard"
  network = "default"
  service_account = "default"
  # create a new VM for the notebook instance 
  # if the VM instance already exists, use it 
  # instead of creating a new one 
  # this is useful for debugging 
  # use_existing_disk = true
}

