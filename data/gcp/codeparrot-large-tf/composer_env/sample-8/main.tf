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

# create composer environment in region us-central1. Create software config and use image composer-2.0.0-preview.3-airflow-2.1.2 (Ubuntu Server 16.04 LTS, SDD Volume Type)
resource "google_composer_environment" "name_0" {
  name     = "composer-environment"
  region   = "us-central1"

  config {
    node_count = 1
    machine_type = "e2-micro"

    disk_size_gb = "100"

    service_account = "default"
    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform"
    ]

    init_script = <<EOF
#!/bin/bash

set -euf -o pipefail

LOGFILE="/var/log/composer-environment.log"

# create log analytics workspace
export PROJECT_ID="${var.project_id}"
export GOOGLE_CLOUD_PROJECT="${var.project_id}"
export STAGE_DIR="${var.project_id}/composer-environment"

# create log analytics workspace
export STAGE_DIR="${var.project_id}/logs"

# create log analytics workspace
export STAGE_DIR="${var.project_id}/composer-environment-logs"

# create log analytics workspace
export STAGE_DIR="${var.project_id}/composer-environment-metrics"

# create log analytics workspace
export STAGE_DIR="${var.project_id}/composer-environment-monitoring"

# create log analytics workspace
export STAGE_DIR="${var.project_id}/composer-environment-monitoring-metrics"

# create log analytics workspace
export STAGE_DIR="${var.project_id}/composer-environment-monitoring-monitoring"

# create log analytics workspace
export STAGE_DIR="${var.project_id}/composer-environment-monitoring-monitoring-metrics"

# create log analytics workspace
export STAGE_DIR="${var.project_id}/composer-environment-monitoring-monitoring-metrics-monitoring"

# create log analytics workspace
export STAGE_DIR="${var.project_id}/composer-environment-monitoring-monitoring-monitoring-metrics-monitoring"

# create log analytics workspace
export STAGE_DIR="${var.project_id}/composer-environment-monitoring-monitoring-monitoring-monitoring-metrics-monitoring"

# create log analytics workspace
export STAGE_DIR="${var.project_id}/composer-environment-monitoring-monitoring-monitoring-monitoring-metrics-monitoring"

# create log analytics workspace
export STAGE_DIR="${var.project_id}/composer-environment-monitoring-monitoring-monitoring-monitoring-metrics-monitoring"

# create log analytics workspace
export STAGE_DIR="${var.project_id}/composer-environment-monitoring-monitoring-monitoring-monitoring-metrics-monitoring-monitoring"

# create log analytics workspace
export STAGE_DIR="${var.project_id}/composer-environment-monitoring-monitoring-monitoring-monitoring-monitoring-metrics-monitoring"

# create log analytics workspace
export STAGE_DIR="${var.project_id}/composer-environment-monitoring-monitoring-monitoring-monitoring-monitoring-metrics-monitoring-monitoring"

# create log analytics workspace
export STAGE_DIR="${var.project_id}/composer-environment-monitoring-monitoring-monitoring-monitoring-monitoring-monitoring
}

