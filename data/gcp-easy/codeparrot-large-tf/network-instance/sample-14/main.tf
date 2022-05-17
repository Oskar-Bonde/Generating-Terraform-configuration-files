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
  name = "my-network-${random_suffix}"
  auto_create_subnetworks = false
}

# a compute instancevariable with a default value
resource "google_compute_instance_template" "name_1" {
  name = "my-instance-template-${random_suffix}"
  machine_type = "f1-micro"
  can_ip_forward = true

  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }

  can_ip_forward = true
}

