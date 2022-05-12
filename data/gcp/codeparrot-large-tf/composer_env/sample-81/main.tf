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
  name     = "composer-env-${random_suffix}"
  region   = "us-central1"
  project  = var.project_id
  composer = google_composer_environment.name_0.id
  version = "~> 10.0"

  # Set the default service account for the project
  default_service_account = "projects/${var.project_id}/serviceAccounts/${local.cloudbuild_sa_email}"

  # Set the default networking mode for the project
  networking_mode = "VPC_NATIVE"

  # Set the default IP address range for the project
  ip_cidr_range = "10.0.0.0/16"

  # Set the default networking IP address range for the project
  network_ip_cidr_range = "10.0.0.0/16"

  # Set the default firewall rules for the project
  firewall_inbound_ports = ["22", "3389"]

  # Set the default networking mode for the project
  networking_mode = "VPC_NATIVE"

  # Set the default firewall rules for the project
  firewall_inbound_ports = ["3389"]

  # Set the default networking mode for the project
  networking_mode = "VPC_NATIVE"

  # Set the default firewall rules for the project
  firewall_inbound_ports = ["80", "443"]

  # Set the default networking mode for the project
  networking_mode = "VPC_NATIVE"

  # Set the default firewall rules for the project
  firewall_inbound_ports = ["443"]

  # Set the default networking mode for the project
  networking_mode = "VPC_NATIVE"

  # Set the default firewall rules for the project
  firewall_inbound_ports = ["80", "443"]

  # Set the default networking mode for the project
  networking_mode = "VPC_NATIVE"

  # Set the default firewall rules for the project
  firewall_inbound_ports = ["80", "443"]

  # Set the default networking mode for the project
  networking_mode = "VPC_NATIVE"

  # Set the default firewall rules for the project
  firewall_inbound_ports = ["80", "443"]

  # Set the default networking mode for the project
  networking_mode = "VPC_NATIVE"

  # Set the default firewall rules for the project
  firewall_inbound_ports = ["80", "443"]

  # Set the default networking mode for the project
  networking_mode = "VPC_NATIVE"

  # Set the default firewall rules for the project
  firewall_inbound_ports = ["80", "443"]

  # Set the default networking mode for the project
  networking_mode = "VPC_NATIVE"

  # Set the default firewall rules for the project
  firewall_inbound_ports = ["80", "443"]

  # Set the default networking mode for the project
  networking_mode = "VPC_NATIVE"

  # Set the default firewall rules for the project
  firewall_inbound_ports = ["80", "443"]

  # Set the default networking mode for the project
  networking_mode = "VPC_NATIVE"

  # Set the default firewall rules
}

