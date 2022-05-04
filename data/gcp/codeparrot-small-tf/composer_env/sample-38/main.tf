terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with only region set to europe north1
provider "google" {
  region = "europe-north1"
}

# create composer environment in region us-central1. Create software config and use image composer-2.0.0-preview.3-airflow-2.1.2.0
# See https://cloud.google.com/compute/docs/instances/create#installing_the_cloud_composer_environment

# terraform configuration
# terraform {
#   required_providers {
#     google = {
#       source = "hashicorp/google"
#     }
#   }
# }

# create a compute instance
resource "google_compute_instance" "name_0" {
  name = "my-compute-instance-${random_suffix}"
  machine_type = "f1-micro"
  zone = "europe-north1-b"

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

