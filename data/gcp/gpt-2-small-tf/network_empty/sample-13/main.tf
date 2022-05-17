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

# a google compute network resource with name terraform network
resource "google_compute_network" "name_0" {
  name = "my-network"
  project = var.project_id
  region = var.region
  network = google_compute_network.name_0.self_link
}

