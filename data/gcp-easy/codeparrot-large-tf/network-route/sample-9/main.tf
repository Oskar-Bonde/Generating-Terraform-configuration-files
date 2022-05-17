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

# a compute network resource
resource "google_compute_network" "name_0" {
  name = "my-network-${local.name_suffix}"
  auto_create_subnetworks = "false"
}

# compute route resource
resource "google_compute_route" "name_1" {
  name        = "my-route-${local.name_suffix}"
  dest_range  = "0.0.0.0/0"
  network     = google_compute_network.name_0.self_link
  next_hop_ilb = google_compute_instance.vm_instance.network_interface.0.access_config.0.nat_ip
}

