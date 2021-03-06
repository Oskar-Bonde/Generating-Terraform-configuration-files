terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block 
provider "google" {
  credentials = file("${var.credentials_file}")
  project     = "${var.project}"
  region      = "${var.region}"
}

# a compute network resource
resource "google_compute_network" "name_0" {
  name                    = "network-name"
  auto_create_subnetworks = "false"
}

# compute route resource
resource "google_compute_route" "name_1" {
  name           = "route-name"
  network        = "${google_compute_network.name_0.name}"
  destination_range = "10.0.0.0/16"
  next_hop_gateway = "default-internet-gateway"
}

