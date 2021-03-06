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
  project = google_project.project.project_id
  region = "us-central1"
  config {
    machine_type = "e2-medium"
    disk_size_gb = 100
    disk_type = "pd-standard"
    image_type = "COS"
  }
  auto_repair = true
  management_config {
    auto_repair  = true
    auto_upgrade = true
  }
  lifecycle {
    ignore_changes = [
      node_config[0].disk_size_gb,
      node_config[0].disk_type,
      node_config[0].preemptible,
      node_config[0].tags,
      node_config[0].service_account_email
    ]
  }
  node_config {
    disk_type = "pd-standard"
    image_type = "COS"
    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform",
      "https://www.googleapis.com/auth/devstorage.read_only",
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring",
      "https://www.googleapis.com/auth/trace.append",
      "https://www.googleapis.com/auth/cloud_debugger",
      "https://www.googleapis.com/auth/cloud-debugger.add_credentials",
      "https://www.googleapis.com/auth/cloud-platform",
      "https://www.googleapis.com/auth/cloud-platform.read_only",
      "https://www.googleapis.com/auth/cloud-platform.write_only",
      "https://www.googleapis.com/auth/cloud-platform.read_write",
      "https://www.googleapis.com/auth/servicecontrol",
      "https://www.googleapis.com/auth/servicecontrol.readonly",
      "https://www.googleapis.com/auth/trace.append",
      "https://www.googleapis.com/auth/cloud_debugger",
      "https://www.googleapis.com/auth/cloud-debugger.add_credentials",
      "https://www.googleapis.com/auth/cloud-platform",
      "https://www.googleapis.com/auth/cloud-platform.read_only",
      "https://www.googleapis.com/auth/cloud-platform.write_only",
      "https://www.googleapis.com/auth/cloud-platform.read_write",
      "https://www.googleapis.com/auth/trace.append",
      "https://www.googleapis.com/auth/cloud_debugger",
      "https://www.googleapis.com/auth/cloud-debugger.add_credentials",
      "https://www.googleapis.com/auth/cloud-platform",
      "https://www.googleapis.com/auth/cloud-platform.read_only",
      "https://www.googleapis.com/auth/cloud-platform.write_only",
      "https://www.googleapis.com/auth/cloud-platform.read_write",
      "https://www.googleapis.com/auth/trace.append",
      "https://
}

