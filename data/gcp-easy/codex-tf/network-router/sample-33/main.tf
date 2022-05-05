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

# create compute network resource
resource "google_compute_network" "name_0" {
  name                    = "${var.network_name}"
  auto_create_subnetworks = "false"
}

# resource block: create a compute router 
resource "google_compute_router" "name_1" {
  name    = "${var.router_name}"
  network = "${google_compute_network.name_0.self_link}"
}

