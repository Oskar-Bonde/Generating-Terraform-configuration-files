terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
provider "google" {
}

# ml engine model resource
resource "google_ml_engine_model" "name_0" {
  name = "my-model-${random_suffix}"
  region = "us-central1"
  initial_node_count = 1
  max_pods_per_node = 1
  min_replicas = 1
  max_nodes = 1
  machine_type = "e2-medium"
  network_config {
    subnetwork = "default"
    ip_allocation_policy {
      use_ip_aliases = true
    }
  }
  tags = ["foo", "bar"]
}

