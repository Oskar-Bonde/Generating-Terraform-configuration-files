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

# create compute network with a name surfly and a network interface
resource "google_compute_network" "name_0" {
  name = "my-network-${random_suffix}"
  auto_create_subnetworks = "false"
  project = google_project.project.project_id

  depends_on = [
    # google_project_service.compute_instance
  ]
}

# create compute subnetwork. Use ip cidr range 10.0.0.0/16 and use previous compute network called surf_ip
resource "google_compute_subnetwork" "name_1" {
  name = "my-subnet-${random_suffix}"
  ip_cidr_range = "10.0.0.0/16"
  network = google_compute_network.name_0.self_link

  depends_on = [
    # google_project_service.compute_instance
  ]
}

# resource compute address, set subnetwork id. Set address type to internal, use address 10.0.42.42/32
resource "google_compute_address" "name_2" {
  name = "my-ip-${random_suffix}"
}
