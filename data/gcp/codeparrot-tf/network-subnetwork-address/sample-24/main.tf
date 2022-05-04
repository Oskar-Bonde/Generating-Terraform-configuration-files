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

# create compute network with a name surfly, with a subnet and two subnets
resource "google_compute_network" "name_0" {
  name = "my-network-${local.name_suffix}"
  auto_create_subnetworks = "false"
  routing_mode = "REGIONAL"
  project = google_project.project.project_id

  depends_on = [
    # The project's services must be set up before the
    # network is enabled as the compute API will not
    # be enabled and cause the setup to fail.
    google_project_service.compute_api,
  ]
}

# create compute subnetwork. Use ip cidr range 10.0.0.0/16 and use previous compute network called surf_subnet
resource "google_compute_subnetwork" "name_1" {
  name = "my-subnet-${local.name_suffix}"
  ip_cidr_range = "10.0.1.0/24"
  region = "europe-west1"
  network = google_compute_network.name_0.self_link

  depends_on = [
    # The project's services must be set up before the
    # network is enabled as the compute API will not
    # be enabled and cause the setup to fail.
    google_project_service.compute_api,
  ]
}

# resource compute address, set subnetwork id. Set address type to internal, use address 10.0.42.42/32
resource "google_compute_address" "name_2" {
  name = "my-ip-address"
  subnetwork = google_compute_subnetwork.name_1.self_link
}
