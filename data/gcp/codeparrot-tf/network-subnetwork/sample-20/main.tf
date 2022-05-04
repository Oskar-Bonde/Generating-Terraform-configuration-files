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

# create compute network with name surf_c
resource "google_compute_network" "name_0" {
  name = "surf-c"
  auto_create_subnetworks = "false"
  project = var.project_id
  auto_create_network = "false"
  depends_on = [google_project_service.compute]
}

# create compute subnetwork. Use ip cidr range 10.0.0.0/16 and use compute network surf id
resource "google_compute_subnetwork" "name_1" {
  name = "surf-c-subnet"
  ip_cidr_range = "10.0.0.0/16"
  network = google_compute_network.name_0.id
}
