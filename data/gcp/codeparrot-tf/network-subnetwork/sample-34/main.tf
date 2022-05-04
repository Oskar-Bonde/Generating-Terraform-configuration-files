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

# create compute network with name surfly and cidr
resource "google_compute_network" "name_0" {
  name = "my-network-${random_suffix}"
  auto_create_subnetworks = "false"
  routing_mode = "GLOBAL"
  project = google_project.project.project_id

  depends_on = [
    # google_project_service.compute, google_compute_subnetwork.name_1, google_compute_subnetwork.subnet_02, google_compute_subnetwork.subnet_03
    google_project_service.compute, google_compute_subnetwork.subnet_04, google_compute_subnetwork.subnet_05, google_compute_subnetwork.subnet_06, google_compute_subnetwork.subnet_07
  ]
}

# create compute subnetwork. Use ip cidr range 10.0.0.0/16 and use compute network surf id
resource "google_compute_subnetwork" "name_1" {
  name = "my-subnet-01-${random_suffix}"
  ip_cidr_range = "10.0.0.0/16"
  network = google_compute_network.name_0.self_link

  region = "europe-west1"
  # change subnet name to a subnetwork
  subnet = google_compute_subnetwork.name_1.id

  secondary_ip_range {
    range_name    = "europe-west1-b"
    ip_cidr_range = "10.0.0.0/16"
  }

  secondary_ip_range {
    range_name    = "europe-west1-c"
    ip_cidr_range = "10.0.16.0/20"
  }
}
