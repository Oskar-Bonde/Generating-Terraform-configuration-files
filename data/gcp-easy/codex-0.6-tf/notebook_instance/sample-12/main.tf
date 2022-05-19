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
  project     = var.project
  region      = var.region
}

# create a notebook instance 
resource "google_ai_platform_notebook_instance" "name_0" {
  name = "my-notebook-instance"
  zone = var.zone
  machine_type = "n1-standard-4"
  boot_disk_size_gb = 100
  boot_disk_type = "pd-standard"
  container {
    image = "gcr.io/deeplearning-platform-release/tf2-cpu"
    args = ["--notebook-dir=/home/jupyter-user"]
  }
  network_access {
    allow_egress_from_private_ip_range = true
  }
  service_account {
    scopes = [
      "https://www.googleapis.com/auth/cloud-platform",
    ]
  }
}

