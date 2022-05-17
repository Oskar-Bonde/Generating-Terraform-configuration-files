terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
provider "google-beta" {
}

# create compute network
resource "google_compute_network" "name_0" {
  name = "my-network-%{random_suffix}"
}

# create a compute ha vpn gatewayresource "google_compute_ha_vpn_gateway" "default" {
  name = "my-ha-vpn-gateway-%{random_suffix}"
}

