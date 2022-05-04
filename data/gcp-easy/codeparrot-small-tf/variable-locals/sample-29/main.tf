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

# variable block
variable "name_0" {
  default = "ubuntu"
}

# local blockresource
resource "google_compute_instance" "name_1" {
  name = "my-gce-instance-${random_suffix}"
  machine_type = "f1-micro"
  zone = "us-central1-f"

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

