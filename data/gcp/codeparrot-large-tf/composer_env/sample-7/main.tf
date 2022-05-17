terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with only region set to europe north1
provider "google" {
}

# create composer environment in region us-central1. Create software config and use image composer-2.0.0-preview.3-airflow-2.1.2
resource "google_composer_environment" "name_0" {
  name     = "composer-environment-${local.name_suffix}"
  region   = "us-central1"
  project  = var.project_id
  composer = google_composer_environment.name_0.id

  # Add a default node pool to the instance group of the default node pool
  node_count = 1
  node_config {
    machine_type = "e2-medium"
    image_type   = "COS_CONTAINERD"
    disk_size_gb = 100
    disk_type    = "pd-standard"
    auto_repair  = true
    auto_upgrade = true
  }

  # Add a default node pool to the instance group of the default node pool
  node_count = 1
  node_config {
    machine_type = "e2-medium"
    image_type   = "COS_CONTAINERD"
    disk_size_gb = 100
    disk_type    = "pd-standard"
    auto_repair  = true
    auto_upgrade = true
  }

  # Add a default node pool to the instance group of the default node pool
  node_count = 1
  node_config {
    machine_type = "e2-medium"
    image_type   = "COS_CONTAINERD"
    disk_size_gb = 100
    disk_type    = "pd-standard"
    auto_repair  = true
    auto_upgrade = true
  }

  # Add a default node pool to the instance group of the default node pool
  node_count = 1
  node_config {
    machine_type = "e2-medium"
    image_type   = "COS_CONTAINERD"
    disk_size_gb = 100
    disk_type    = "pd-standard"
    auto_repair  = true
    auto_upgrade = true
  }

  # Add a default node pool to the instance group of the default node pool
  node_count = 1
  node_config {
    machine_type = "e2-medium"
    image_type   = "COS_CONTAINERD"
    disk_size_gb = 100
    disk_type    = "pd-standard"
    auto_repair  = true
    auto_upgrade = true
  }

  # Add a default node pool to the instance group of the default node pool
  node_count = 1
  node_config {
    machine_type = "e2-medium"
    image_type   = "COS_CONTAINERD"
    disk_size_gb = 100
    disk_type    = "pd-standard"
    auto_repair  = true
    auto_upgrade = true
  }

  # Add a default node pool to the instance group of the default node pool
  node_count = 1
  node_config {
    machine_type = "e2-medium"
    image_type   = "COS_CONTAINERD"
    disk_size_gb = 100
    disk_type    = "pd-standard"
    auto_repair  = true
    auto_upgrade = true
  }

  # Add a default node pool to the instance group of the default node pool
  node_count = 1
  node_config {
    machine_type = "e2-medium"
    image_type   = "COS_CONTAINERD"
    disk_size_gb = 100
    disk_type    = "pd-standard"
    auto_repair  = true
    auto_upgrade = true
 
}

