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

# create compute network with name surf_it and set provider
resource "google_compute_network" "name_0" {
  name = "my-network-${random_suffix}"
  auto_create_subnetworks = "false"
  project = google_project.project.project_id

  depends_on = [
    # google_project_service.compute_api
    google_project_service.compute_api,
    google_project_service.container_api,
    google_project_service.container_registry_api,
    google_project_service.compute_engine_service,
    google_project_service.compute_cluster_service,
    google_project_service.compute_node_pool_service,
    google_project_service.compute_node_pool_registry_service,
    google_project_service.container_registry_registry_service
  ]
}

# create compute subnetwork. Use ip cidr range 10.0.0.0/16 and use compute network surf id
resource "google_compute_subnetwork" "name_1" {
  name = "my-subnetwork-${random_suffix}"
  ip_cidr_range = "10.0.0.0/16"
  region = "europe-west1"
  network = google_compute_network.name_0.id
}

