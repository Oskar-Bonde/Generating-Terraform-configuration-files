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

# a compute network resource with a name
resource "google_compute_network" "name_0" {
  name = "my-network-${random_suffix}"
}

# compute route with dest range 15.0.0.0/24 and next hop id 10.132.1.5. Use the compute network id and set priority to 100
resource "google_compute_route" "name_1" {
  name        = "default-route-${random_suffix}"
  network     = google_compute_network.name_0.self_link
  next_hop_instance = "default-route-${random_suffix}"
  priority     = 100

  next_hop_instance_zone = "us-west1-a"

  priority_groups = [
    "my-region1",
    "my-region2",
  ]

  next_hop_instance_tags = [
    "my-tag1",
    "my-tag2",
  ]
}

