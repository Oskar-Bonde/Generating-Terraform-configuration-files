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
  name       = "my-region-endpoint-group"
  network_endpoint_type = "SERVERLESS"
  network_endpoint_id = google_compute_network_endpoint_group.default.id
}

