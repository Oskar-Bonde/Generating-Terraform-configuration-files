terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with only region set to europe north1
provider "google" {
  region = "europe-north1"
}

# a compute network resource with a name of the network interface
resource "google_compute_network" "name_0" {
  name = "my-network-${random_suffix}"
}

# compute route with dest range 15.0.0.0/24 and next hop id 10.132.1.5. Use the compute network id and set priority to 100
resource "google_compute_route" "name_1" {
  name = "my-route-${random_suffix}"
  dest_range = "15.0.0.0/24"
  network = google_compute_network.name_0.id
  next_hop_id = 10.132.1.5
}

