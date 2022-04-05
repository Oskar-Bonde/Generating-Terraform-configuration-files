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

# a compute instance that has image debian-9, network interface default, is type f1-micro and has a name
resource "google_compute_instance" "name_0" {
  name         = "my-instance"
  machine_type = "f1-micro"
  zone         = "europe-north1-a"
  image        = "debian-9"
  network_interface {
    network = "default"
  }
}

