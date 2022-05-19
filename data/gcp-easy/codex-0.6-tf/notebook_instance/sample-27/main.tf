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
  name = "my-notebook-instance"
  zone = "us-central1-a"
  machine_type = "n1-standard-4"
  boot_disk_size_gb = 100
  boot_disk_type = "pd-standard"
  container {
    image = "gcr.io/deeplearning-platform-release/base-cpu:latest"
  }
  network {
    network_uri = "default"
  }
  service_account {
    scopes = [
      "https://www.googleapis.com/auth/cloud-platform",
    ]
  }
}

