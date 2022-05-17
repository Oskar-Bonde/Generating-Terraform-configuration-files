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

# create compute network
resource "google_compute_network" "name_0" {
  name = "my-network-${random_suffix}"
  auto_create_subnetworks = "false"
}

# create compute subnetworkvariable
resource "google_compute_subnetwork_iam_member" "name_1" {
  network = google_compute_network.name_0.name
  role    = "roles/compute.networkUser"
  member  = "allUsers"
}

