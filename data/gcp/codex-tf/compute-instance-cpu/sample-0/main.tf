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

# a compute instance that has machine type f1-micro, debian-9 image and default network
resource "google_compute_instance" "name_0" {
  name         = "instance-test-${count.index}"
  machine_type = "f1-micro"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = "default"
  }
}

# output the cpu platform used by the compute instance
output "name_1" {
  value = "${google_compute_instance.name_0.metadata.0.items.0.value}"
}

