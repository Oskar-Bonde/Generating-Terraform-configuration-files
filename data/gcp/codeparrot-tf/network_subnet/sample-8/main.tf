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

# compute network that auto creates subnetworks
resource "google_compute_network" "name_0" {
  name = "my-custom-network-${local.name_suffix}"
  auto_create_subnetworks = "false"
}
