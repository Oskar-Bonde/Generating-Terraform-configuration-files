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

# create compute network, give it a name and auto create subnetworks
resource "google_compute_network" "name_0" {
  name = "my-network"
  auto_create_subnetworks = "false"
}

# compute route with dest range 15.0.0.0/24 and next hop id 10.132.1.5. Use the compute network id and set priority to 100 to get a higher priority
resource "google_compute_route" "name_1" {
  name       = "route1"
  network    = google_compute_network.name_0.id
  dest_range = "15.0.0.0/24"
  priority   = 100

  next_hop_vpn_tunnel = google_compute_vpn_tunnel.next_hop.id
}

