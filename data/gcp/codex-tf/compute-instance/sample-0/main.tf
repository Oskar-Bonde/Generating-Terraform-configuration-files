terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
provider "google" {
  credentials = "${file("${path.module}/credentials.json")}"
  project     = "${var.project}"
}

# a compute instance that has image debian-9, network interface default and is type f1-micro
resource "google_compute_instance" "name_0" {
  name         = "terraform-test-${var.random_id}"
  machine_type = "f1-micro"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "debian-9"
    }
  }

  network_interface {
    network = "default"
  }
}

