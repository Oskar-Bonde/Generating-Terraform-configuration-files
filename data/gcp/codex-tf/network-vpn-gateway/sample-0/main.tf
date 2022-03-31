terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
provider "google" {
  credentials = "${file("${path.module}/credentials.json")}"
  project     = "${var.project}"
}

# create compute network with global routing mode and set auto create subnetworks to false
resource "google_compute_network" "name_0" {
  name                    = "${var.network_name}"
  auto_create_subnetworks = false
  routing_mode            = "GLOBAL"
}

# resource compute ha vpn gateway, in the us central1 region and use the compute network id
resource "google_compute_ha_vpn_gateway" "name_1" {
  name               = "${var.ha_vpn_gateway_name}"
  description        = "${var.ha_vpn_gateway_description}"
  region             = "us-central1"
  network            = "${google_compute_network.name_0.name}"
  redundancy_type    = "RING_HASH"
  redundancy_subnets = ["${var.ha_vpn_gateway_subnet_1}", "${var.ha_vpn_gateway_subnet_2}"]
}

