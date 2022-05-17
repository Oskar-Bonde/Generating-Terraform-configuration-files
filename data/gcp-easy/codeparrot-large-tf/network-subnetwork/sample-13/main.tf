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
  name = "my-network-${local.name_suffix}"
}

# create compute subnetworkvariable
resource "google_compute_subnetwork_iam_member" "name_1" {
  name = "my-subnetwork-${local.name_suffix}"
  network = google_compute_network.name_0.self_link
  subnetwork = google_compute_subnetwork.default.name
}

