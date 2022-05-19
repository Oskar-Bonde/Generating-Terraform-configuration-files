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

# a compute instance that has boot disk debian-9 image, network interface default, is type e2-medium and has a name
resource "google_compute_instance" "name_0" {
  name         = "terraform-test"
  machine_type = "e2-medium"

  boot_disk {
    initialize_params {
      image = "debian-9"
    }
  }

  network_interface {
    network = "default"
  }
}

