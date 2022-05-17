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
  project = google_project.project.project_id

  depends_on = [
    # The project's services must be set up before the
    # network is enabled as the compute API will not
    # be enabled and cause the setup to fail.
    google_project_service.compute_api,
  ]
}

# resource block: create a compute router
resource "google_compute_router" "name_1" {
  name    = "my-router-${random_suffix}"
  network = google_compute_network.name_0.id
  region  = "us-central1"
  bgp {
    asn = 64514
  }
}

