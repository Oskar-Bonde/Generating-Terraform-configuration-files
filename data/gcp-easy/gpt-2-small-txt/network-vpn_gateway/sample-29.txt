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

# create compute networkresource "google_compute_network" "default" {
  name = "my-network-default"
  network = "default"     
}

# create a compute ha vpn gatewayresource "google_compute_ha_vpn_gateway" "default" {
  name = "my-ha-vpn-gateway"
  network = "default"     
}

