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
  autoscaling_config {
    min_node_count = 1
    max_node_count = 1
    min_replicas = 1
    cooldown_period = 60
    cpu_utilization {
      target = 0.5
    }
  }
  management {
    auto_repair  = "true"
    auto_upgrade = "true"
  }
  node_config {
    machine_type = "e2-medium"
    disk_size_gb = 50
  }
  network_interface {
    network = "default"
    access_config {
      # Ephemeral IP
    }
  }
}

