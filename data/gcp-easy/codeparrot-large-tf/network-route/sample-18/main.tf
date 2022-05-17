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
  name = "my-network-${random_suffix}"
  auto_create_subnetworks = "false"
}

# compute route resource 
resource "google_compute_route" "name_1" {
  name        = "my-route-${random_suffix}"
  network     = google_compute_network.name_0.self_link
  dest_range  = "0.0.0.0/0"
  priority    = 1000

  next_hop_vpn_tunnel = google_compute_vpn_tunnel.default.id
}

