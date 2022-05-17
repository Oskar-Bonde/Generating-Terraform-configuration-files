terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with only region set to europe north1
provider "google" {
}

# a compute instance that has boot disk debian-9 image, network interface default, is type f1-micro and has a name of the form f1-micro-ubuntu-xenial-16.04-amd64
resource "google_compute_instance" "name_0" {
  name = "my-compute-instance-boot-disk-${random_suffix}"
  machine_type = "f1-micro"
  zone = "europe-west1-b"
  network_interface {
    network = "default"
    access_config {
      # Ephemeral
    }
  }
}

