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

# create compute network 
resource "google_compute_network" "name_0" {
  name                    = "${var.vpc_name}"
  auto_create_subnetworks = "false"
}

# create compute subnetwork
resource "google_compute_subnetwork" "name_1" {
  name          = "${var.vpc_name}"
  ip_cidr_range = "${var.vpc_cidr}"
  network       = "${google_compute_network.name_0.self_link}"
  region        = "${var.region}"
}

