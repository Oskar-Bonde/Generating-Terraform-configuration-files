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
  name = "my-ml-engine-model"
  region = "us-central1"
  initial_node_count = 1
  max_pods_per_node = 1
  min_replicas = 1
  machine_type = "e2-medium"
  network_config {
    network = "default"
  }
  subnetwork {
    name = "my-subnetwork-1"
  }
  ip_allocation_policy {
    cluster_secondary_range_name  = "my-pods-range"
    services_secondary_range_name = "my-services-range"
  }
  initial_node_count = 1
  min_count = 1
  max_count = 1
  node_config {
    machine_type = "e2-medium"
    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform",
      "https://www.googleapis.com/auth/userinfo.email"
    ]
  }
  workload_identity_config {
    workload_pool = "default"
  }
  workload_identity_config {
    workload_pool = "default"
  }
  zone = "us-central1-a"
}

