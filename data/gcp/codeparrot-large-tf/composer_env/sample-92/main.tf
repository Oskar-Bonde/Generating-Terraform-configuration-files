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
  name = local.composer_env_name
  region = "us-central1"
  config {
    node_config {
      machine_type = "e2-micro"
      image_version = "latest"
    }
    oauth_scopes = [
      "https://www.googleapis.com/auth/compute",
      "https://www.googleapis.com/auth/devstorage.read_only",
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring",
      "https://www.googleapis.com/auth/pubsub",
      "https://www.googleapis.com/auth/service.management.readonly",
      "https://www.googleapis.com/auth/trace.append",
      "https://www.googleapis.com/auth/cloud_debugger",
      "https://www.googleapis.com/auth/cloud-platform",
      "https://www.googleapis.com/auth/cloud-trace.append",
      "https://www.googleapis.com/auth/cloud_profiler",
      "https://www.googleapis.com/auth/cloud-trace.append",
      "https://www.googleapis.com/auth/cloud_identity",
      "https://www.googleapis.com/auth/servicecontrol",
      "https://www.googleapis.com/auth/service.management",
      "https://www.googleapis.com/auth/trace.append",
      "https://www.googleapis.com/auth/cloud_trace.append",
      "https://www.googleapis.com/auth/cloud_identity",
      "https://www.googleapis.com/auth/servicecontrol",
      "https://www.googleapis.com/auth/trace.append",
      "https://www.googleapis.com/auth/cloud_profiler",
      "https://www.googleapis.com/auth/cloud_profiler.append",
      "https://www.googleapis.com/auth/cloud_identity",
      "https://www.googleapis.com/auth/servicecontrol",
      "https://www.googleapis.com/auth/trace.append",
      "https://www.googleapis.com/auth/cloud_profiler",
      "https://www.googleapis.com/auth/cloud_identity",
      "https://www.googleapis.com/auth/servicecontrol",
      "https://www.googleapis.com/auth/trace.append",
      "https://www.googleapis.com/auth/cloud_profiler",
      "https://www.googleapis.com/auth/cloud_identity",
      "https://www.googleapis.com/auth/servicecontrol",
      "https://www.googleapis.com/auth/trace.append",
      "https://www.googleapis.com/auth/cloud_profiler",
      "https://www.googleapis.com/auth/cloud_identity",
      "https://www.googleapis.com/auth/servicecontrol",
      "https://www.googleapis.com/auth/trace.append",
      "https://www.googleapis.com/auth/cloud_profiler",
      "https://www.googleapis.com/auth/cloud_identity",
      "https://www.googleapis.com/auth/trace.append",
      "https://www.googleapis.com/auth/cloud_profiler",
      "
}

