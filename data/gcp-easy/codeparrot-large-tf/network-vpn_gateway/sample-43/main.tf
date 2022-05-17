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

# create compute network
resource "google_compute_network" "name_0" {
  name = "my-custom-network-${random_suffix}"
  auto_create_subnetworks = "false"
}

# create a compute ha vpn gateway
resource "google_compute_ha_vpn_gateway" "name_1" {
  name = "my-ha-vpn-gw-${random_suffix}"
  network = google_compute_network.name_0.self_link

  # NOTE: this is a private_ip
  remote_ip_ranges = [
    "10.0.0.0/8",
    "172.16.0.0/12",
    "192.168.0.0/16",
  ]

  # NOTE: this is a private_ip
  remote_ip_ranges = [
    "172.16.0.0/12",
    "192.168.0.0/16",
  ]

  # NOTE: this is a private_ip
  remote_ip_ranges = [
    "192.168.0.0/18",
    "172.16.0.0/20",
  ]
}

