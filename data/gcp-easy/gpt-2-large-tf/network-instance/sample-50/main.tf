terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
provider "google-beta" {
  project = var.project_id
  region  = var.region
  zone    = var.zone
}

# compute network resource

resource "google_compute_network" "name_0" {
  name                    = "my-network-${random_suffix}"
  auto_create_subnetworks = false
}

# a compute instance

resource "google_compute_subnetwork" "name_1" {
  name          = "my-subnetwork-${random_suffix}"
  ip_cidr_range = "10.0.0.0/16"
  region        = var.region
  network       = google_compute_network.name_0.self_link
  private_ip_google_access = true
}

