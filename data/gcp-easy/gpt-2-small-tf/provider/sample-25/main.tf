terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with only region set to europe north1
resource "google_compute_region_network_endpoint_group" "name_0" {
  provider = google-beta
  name    = "my-network-endpoint-group"
  network = google_compute_network.default.name
  network_endpoint = google_compute_network.default.endpoint
}
