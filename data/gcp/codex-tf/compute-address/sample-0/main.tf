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

# create compute network with a name surf
resource "google_compute_network" "name_0" {
  name = "surf"
}

# create compute subnetwork. Use ip cidr range 10.0.0.0/16 and use previous compute network called surf
resource "google_compute_subnetwork" "name_1" {
  name          = "surf"
  ip_cidr_range = "10.0.0.0/16"
  region        = "us-central1"
  network       = "${google_compute_network.name_0.name}"
}

# resource compute address, use subnetwork id. Set address type to internal, use address 10.0.42.42
resource "google_compute_address" "name_2" {
  name   = "surf"
  region = "${google_compute_subnetwork.name_1.region}"
  address_type = "INTERNAL"
  address = "10.0.42.42"
}

