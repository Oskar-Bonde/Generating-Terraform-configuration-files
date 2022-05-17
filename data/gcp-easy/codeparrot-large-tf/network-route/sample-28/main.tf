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
}

# compute route resource
resource "google_compute_route" "name_1" {
  name        = "my-route-${local.name_suffix}"
  network     = google_compute_network.name_0.self_link
  dest_range  = "0.0.0.0/0"
  priority     = 1000

  next_hop_vpn_tunnel = google_compute_vpn_tunnel.default.self_link
}

