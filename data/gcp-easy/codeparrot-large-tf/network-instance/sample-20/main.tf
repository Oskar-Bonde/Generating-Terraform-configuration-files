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

# compute network resource
resource "google_compute_network" "name_0" {
  name = "my-network-${local.name_suffix}"
}

# a compute instancevariable with a default value
resource "google_compute_instance_variable" "name_1" {
  name = "my-instance-var-${local.name_suffix}"
  machine_type = "f1-micro"
  zone = "us-central1-a"

  tags = ["foo", "bar"]

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

