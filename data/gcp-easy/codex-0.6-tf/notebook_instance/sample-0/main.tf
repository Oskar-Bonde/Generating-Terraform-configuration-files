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
  project     = var.project
  region      = var.region
}

# create a notebook instance 
resource "google_notebooks_instance" "name_0" {
  name         = "my-notebook-instance"
  zone         = var.zone
  machine_type = "n1-standard-4"
  # create a boot disk from a public image 
  boot_disk {
    initialize_params {
      image = "projects/deeplearning-platform-release/global/images/tf2-1-0-cu101-notebooks-20200707"
    }
  }
  # attach a read/write persistent disk 
  attached_disk {
    auto_delete = false
    boot        = false
    device_name = "my-disk"
    initialize_params {
      image = "projects/deeplearning-platform-release/global/images/tf2-1-0-cu101-notebooks-20200707"
    }
  }
  # install additional libraries 
  install_gpu_driver = true
  container_image    = "gcr.io/deeplearning-platform-release/tf2-1-0-cu101-notebooks-20200707"
  # allow http traffic 
  network_access {
    allow_http_traffic = true
  }
  # allow the user to access the JupyterLab UI 
  service_account {
    scopes = ["https://www.googleapis.com/auth/cloud-platform"]
  }
}

