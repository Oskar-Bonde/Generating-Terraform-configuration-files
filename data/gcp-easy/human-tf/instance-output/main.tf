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

# a compute instance resource
resource "google_compute_instance" "name_0" {
  name         = "terraform-instance"
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

# an output block 
output "name_1" {
  description = "CPU platform of the instance"
  value       = google_compute_instance.name_0.cpu_platform
}