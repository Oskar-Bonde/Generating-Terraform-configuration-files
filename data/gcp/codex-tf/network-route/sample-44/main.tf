terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with only region set to europe north1
provider "google" {
  region = "europe-north1"
}

# a compute network resource with a name
resource "google_compute_network" "name_0" {
  name = "terraform-network"
}

# compute route with dest range 15.0.0.0/24 and next hop id 10.132.1.5. Use the compute network id and set priority to 100
resource "google_compute_route" "name_1" {
  name           = "terraform-route"
  network        = google_compute_network.name_0.id
  dest_range     = "15.0.0.0/24"
  next_hop_ip    = "10.132.1.5"
  next_hop_vpn_tunnel = "terraform-vpn-tunnel"
  priority       = 100
}
