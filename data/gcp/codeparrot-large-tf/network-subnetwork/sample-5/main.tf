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

# create compute network, give it a name and set auto create subnetworks to false to use existing ones
resource "google_compute_network" "name_0" {
  name = "my-network"
}

# create compute subnetwork. Use ip cidr range 10.0.0.0/16 and use compute network surf idvariable to change subnet id
resource "google_compute_subnetwork" "name_1" {
  name = "my-subnet"
  ip_cidr_range = "10.0.0.0/16"
  network = google_compute_network.name_0.id
}
