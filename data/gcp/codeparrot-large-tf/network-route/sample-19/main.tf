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

# create compute network, give it a name and auto create subnetworks
resource "google_compute_network" "name_0" {
  name = "my-network"
}

# compute route with dest range 15.0.0.0/24 and next hop id 10.132.1.5. Use the compute network id and set priority to 100 to get a higher priority
resource "google_compute_route" "name_1" {
  name       = "default-route"
  network     = google_compute_network.name_0.self_link
  next_hop_instance = "default-internet-gateway"
  priority     = 100

  next_hop_instance_zone = "us-west1-a"

  priority_steps = [
    {
      action    = "accept"
      direction = "INGRESS"
    },
    {
      action    = "accept"
      direction = "EGRESS"
    },
  ]
}

