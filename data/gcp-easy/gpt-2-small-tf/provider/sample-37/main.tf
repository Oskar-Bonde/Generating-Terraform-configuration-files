terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with only region set to europe north1
resource "google_compute_region_network_endpoint_group" "name_0" {
  name = "my-network-endpoint-group"
  network_endpoint_type = "SERVERLESS"
  network_endpoint_url = "https://my-network-endpoint-group.cloud-foundation.org/v1/projects/my-network-endpoint-group"
  network_endpoint_config {
    network_endpoint_url = "https://my-network-endpoint-group.cloud-foundation.org/v1/projects/my-network-endpoint-group"
  }
}
