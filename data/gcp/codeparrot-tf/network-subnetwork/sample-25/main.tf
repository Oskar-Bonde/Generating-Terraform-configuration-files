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

# create compute network with name surf_ilb
resource "google_compute_network" "name_0" {
  name = "surf-ilb-network-${random_suffix}"
  auto_create_subnetworks = "false"
  routing_mode = "REGIONAL"
  project = var.project_id
  auto_create_network = "true"
  depends_on = [google_project_service.compute]
}

# create compute subnetwork. Use ip cidr range 10.0.0.0/16 and use compute network surf id
resource "google_compute_subnetwork" "name_1" {
  name = "surf-ilb-subnet-${random_suffix}"
  ip_cidr_range = "10.0.0.0/16"
  region = "europe-west1"
  network = google_compute_network.name_0.id
}

