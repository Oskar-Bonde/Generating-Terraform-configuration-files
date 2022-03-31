terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
provider "google" {
  credentials = "${file("${path.module}/credentials.json")}"
  project     = "${var.project}"
}

# create environment in region us-central1. Create software config and use image composer-2.0.0-preview.3-airflow-2.1.2
resource "google_composer_environment" "name_0" {
  name     = "composer-test-%s"
  region   = "us-central1"
  project  = "${var.project}"
  image_version = "composer-2.0.0-preview.3-airflow-2.1.2"
  node_count = 1
  network = "${google_compute_network.test.self_link}"
  subnetwork = "${google_compute_subnetwork.test.self_link}"
  airflow_config_overrides = {
    "scheduler_heartbeat_interval" = "30"
  }
  airflow_config_overrides = {
    "dag_default_view" = "tree"
  }
  airflow_config_overrides = {
    "dag_default_view" = "graph"
  }
  airflow_config_overrides = {
    "dag_default_view" = "code"
  }
  airflow_config_overrides = {
    "dag_default_view" = "gantt"
  }
  airflow_config_overrides = {
    "dag_default_view" = "duration"
  }
  airflow_config_overrides = {
    "dag_default_view" = "landing_times"
  }
  airflow_config_overrides = {
    "dag_default_view" = "gantt"
  }
  airflow_config_overrides = {
    "dag_default_view" = "tree"
  }
  airflow_config_overrides = {
    "dag_default_view" = "graph"
  }
  airflow_config_overrides = {
    "dag_default_view" = "code"
  }
  airflow_config_overrides = {
    "dag_default_view" = "gantt"
  }
  airflow_config_overrides = {
    "dag_default_view" = "duration"
  }
  airflow_config_
}

