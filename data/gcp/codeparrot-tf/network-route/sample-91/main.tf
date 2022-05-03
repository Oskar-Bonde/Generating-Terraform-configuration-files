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

# a compute network resource with a name and a region
resource "google_compute_network" "name_0" {
  name = "my-network-${random_suffix}"
  auto_create_subnetworks = "false"
  routing_mode = "GLOBAL"
  project = google_project.project.project_id

  depends_on = [google_project_service.compute]
}

# compute route with dest range 15.0.0.0/24 and next hop id 10.132.1.5. Use the compute network id and set priority to 100
resource "google_compute_route" "name_1" {
  name = "compute-route-dest-range-15-0-0-0-0--15"
  dest_range = "15.0.0.0/24"
  network = google_compute_network.name_0.self_link

  next_hop_instance_zone = "us-west1-a"

  priority = 100

  tags = ["foo", "bar"]
}

