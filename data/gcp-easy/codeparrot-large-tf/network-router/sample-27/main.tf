terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
provider "google" {
}

# create compute network resource 
resource "google_compute_network" "name_0" {
  name = "my-network-${random_suffix}"
  auto_create_subnetworks = "false"
  routing_mode = "REGIONAL"
  project = google_project.project.project_id

  depends_on = [
    google_project_service.compute_api,
    google_project_service.container_api
  ]
}

# resource block: create a compute router
resource "google_compute_router" "name_1" {
  name    = "my-router-${random_suffix}"
  network = google_compute_network.name_0.self_link
  region  = "us-central1"
  project = google_project.project.project_id

  bgp {
    asn = 64514
  }
}

