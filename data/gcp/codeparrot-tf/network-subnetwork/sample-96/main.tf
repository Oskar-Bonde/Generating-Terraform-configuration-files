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

# create compute network with name surfly and cidr '10.0.0.0/16'
resource "google_compute_network" "name_0" {
  name = "my-network-${random_suffix}"
  auto_create_subnetworks = "true"
  routing_mode = "GLOBAL"
  project = google_project.project.project_id

  depends_on = [
    # google_project_service.compute_api, google_compute_subnetwork.name_1
    google_project_service.compute_api, google_compute_subnetwork.subnet_02
  ]
}

# create compute subnetwork. Use ip cidr range 10.0.0.0/16 and use compute network surf id.
resource "google_compute_subnetwork" "name_1" {
  name = "my-subnet-01-${random_suffix}"
  ip_cidr_range = "10.0.0.0/16"
  region = "europe-west1"
  network = google_compute_network.name_0.self_link
}
