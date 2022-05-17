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

# create a CaPool resource. Located in europe west 4, enterprise tier and set publishing options ca cert and crl to true
resource "google_compute_instance" "name_0" {
  name = "my-vm2"
  machine_type = "europe-west4"
  zone = "europe-west4-a"
  network_interface {
    network = "default"
    subnetwork = "default"
  }
  network_interface {
    network = "default"
    subnetwork = "default"
  }
  network_interface {
    network = "default"
    subnetwork = "default"
  }
  network_interface {
    network = "default"
    subnetwork = "default"
  }
  network_interface {
    network = "default"
    subnetwork = "default"
  }
  network_interface {
    network = "default"
    subnetwork = "default"
  }
  network_interface {
    network = "default"
    subnetwork = "default"
  }
  network_interface {
    network = "default"
    subnetwork = "default"
  }
  network_interface {
    network = "default"
    subnetwork = "default"
  }
  network_interface {
    network = "default"
    subnetwork = "default"
  }
  network_interface {
    network = "default"
    subnetwork = "default"
  }
  network_interface {
    network = "default"
    subnetwork = "default"
  }
  network_interface {
    network = "default"
    subnetwork = "default"
  }
  network_interface {
    network = "default"
    subnetwork = "default"
  }
  network_interface {
    network = "default"
    subnetwork = "default"
  }
  network_interface {
    network = "default"
    subnetwork = "default"
  }
  network_interface {
    network = "default"
    subnetwork = "default"
  }
  network_interface {
    network = "default"
    subnetwork = "default"
  }
  network_interface {
    network = "default"
    subnetwork = "default"
  }
  network_interface {
    network = "default"
    subnetwork = "default"
  }
  network_interface {
    network = "default"
    subnetwork = "default"
  }
  network_interface {
    network = "default"
    subnetwork = "default"
  }
  network_interface {
    network = "default"
    subnetwork = "default"
  }
  network_interface {
    network = "default"
    subnetwork = "default"
  }
  network_interface {
    network = "default"
    subnetwork = "default"
  }
  network_interface {
    network = "default"
    subnetwork = "default"
  }
  network_interface {
    network = "default"
    subnetwork = "default"
  }
  network_interface {
    network = "default"
    subnetwork = "default"
  }
  network_interface {
    network = "default"
    subnetwork = "default"
  }
  network_interface {
    network = "default"
    subnetwork = "default"
  }
  network_interface {
    network = "default"
    subnetwork = "default"
  }
  network_interface {
    network = "default"
    subnetwork = "default"
  }
  network_interface {
    network = "default"
    subnetwork = "default"
  }
  network_interface {
    network = "default"
    subnetwork = "default"
  }
  network_interface {
    network = "default"
    subnetwork = "default"
  }
  network_interface {
    network
}

