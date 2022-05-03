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

# a compute network resource with a name and subnet
resource "google_compute_network" "name_0" {
  name = "my-network-${random_suffix}"
  auto_create_subnetworks = "false"
}

# compute route with dest range 15.0.0.0/24 and next hop id 10.132.1.5. Use the compute network id and set priority to 100
resource "google_compute_route" "name_1" {
  name       = "route1-${random_suffix}"
  network     = google_compute_network.name_0.self_link
  dest_range = "15.0.0.0/24"
  priority   = 100

  next_hop_vpn_tunnel = "true"
  tags = ["ha-gce-example-com-k8s-io-role-master"]
}

