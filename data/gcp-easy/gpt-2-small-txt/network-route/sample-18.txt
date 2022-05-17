terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
provider "google" {
}

# a compute network resourceresource "google_compute_network" "default" {
#   name = "my-network-resource"
#   region = "us-central1"
#   network_interface {
#     network = "default"    
#     access_config {
#     }
#   }
# }

# a compute instance resource "google_compute_instance" "vm_instance" {
#   name = "my-instance-resource"
#   machine_type = "f1-micro"

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

# compute route resource
}

