terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block. Make it empty
provider "google" {
}

# a compute network resource with a name
resource "google_compute_network" "name_1" {
  name = "compute-network"
}

# compute route with dest range 15.0.0.0/24 and next hop id 10.132.1.5. Use the compute network id and set priority to 100
resource "google_compute_route" "name_1" {
  name        = "network-route"
  dest_range  = "15.0.0.0/24"
  network     = google_compute_network.name_1.name
  next_hop_ip = "10.132.1.5"
  priority    = 100
}

