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
  num_nodes = 1
  machine_type = "e2-medium"
  disk_size_gb = 100
  disk_type = "pd-standard"
  service_account = {
    scopes = ["cloud-platform"]
  }
  network = "default"
}

