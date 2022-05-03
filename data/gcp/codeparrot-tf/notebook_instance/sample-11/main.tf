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

# create a notebook instance in us west 1. Use machine type e2 medium and vm image from deeplearning-platform-release and image familiy tf-latest-cpu.
resource "google_compute_instance" "name_0" {
  name = "my-notebook-instance-%%{random_suffix}"
  machine_type = "e2-medium"
  zone = "europe-west1-b"
  tags = ["minimal-gce-example-com-k8s-io-role-master"]

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

