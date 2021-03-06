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
    disk_type = "pd-standard"
    image_type = "COS"
  }
  node_count = 1
  management {
    auto_repair  = true
    auto_upgrade = true
  }
  management {
    auto_repair  = true
    auto_upgrade = true
  }
  node_config {
    disk_type = "pd-standard"
    image_type = "COS"
  }
  lifecycle {
    ignore_changes = [
      node_config[0].disk_size_gb,
      node_config[0].disk_type,
      node_config[0].preemptible,
      node_config[0].spot_price,
    ]
  }
  service_account {
    email  = google_service_account.default.email
    scopes = ["cloud-platform"]
  }
  depends_on = [google_project_service.compute]
}

