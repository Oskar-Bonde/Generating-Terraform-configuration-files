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
    auto_repair  = "true"
    auto_upgrade = "true"
  }
  ip_allocation_policy {
    cluster_secondary_range_name  = "my-ip-range"
    services_secondary_range_name = "my-svc-range"
  }
  maintenance_policy {
    day          = "MONDAY"
    hour         = "4"
    update_track = "stable"
  }
  maintenance_policy {
    day          = "TUESDAY"
    hour         = "5"
    update_track = "production"
  }
  node_config {
    disk_type    = "pd-standard"
    image_type   = "COS"
    auto_repair  = "true"
    auto_upgrade = "true"
  }
  network_interface {
    network = "default"
    access_config {
      nat_ip = "10.0.0.0/16"
    }
  }
}

