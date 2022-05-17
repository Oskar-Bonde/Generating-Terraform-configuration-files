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
  node_config {
    machine_type = "e2-medium"
    disk_size_gb = 100
  }
  node_count = 1
  management {
    auto_repair  = true
    auto_upgrade = true
  }
  deletion_protection = false
}

