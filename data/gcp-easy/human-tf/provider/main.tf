# Terraform block with google provider
terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
provider "google" {
  region = "europe-north1"
}
resource "google_compute_instance" "vm_instance" {
  name = "my-compute-instance"
  machine_type = "f1-micro"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = "default"    
    access_config {
    }
  }
}