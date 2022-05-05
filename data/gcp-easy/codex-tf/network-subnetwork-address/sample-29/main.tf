terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block 
provider "google" {
  credentials = file("${path.module}/account.json")
  project     = var.project
  region      = var.region
}

# create compute network
resource "google_compute_network" "name_0" {
  name                    = var.vpc_name
  auto_create_subnetworks = "true"
}

# create compute subnetwork
resource "google_compute_subnetwork" "name_1" {
  name          = var.subnet_name
  ip_cidr_range = var.subnet_cidr
  network       = google_compute_network.name_0.self_link
  region        = var.region
}

# make a compute address resource
resource "google_compute_address" "name_2" {
  name = var.ip_name
}

