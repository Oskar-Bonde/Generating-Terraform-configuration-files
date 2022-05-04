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

# create compute network with a name surfly-name
resource "google_compute_network" "name_0" {
  name = "surfly-name"
}

# create compute subnetwork. Use ip cidr range 10.0.0.0/16 and use previous compute network called surf
resource "google_compute_subnetwork" "name_1" {
  name = "surfly-subnet"
  ip_cidr_range = "10.0.1.0/24"
  network = google_compute_network.name_0.self_link
}

# resource compute address, set subnetwork id. Set address type to internal, use address 10.0.42.42
resource "google_compute_address" "name_2" {
  name = "surfly-address"
}
