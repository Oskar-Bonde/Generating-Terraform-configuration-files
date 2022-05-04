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

# create composer environment in region us-central1. Create software config and use image composer-2.0.0-preview.3-airflow-2.1.2 (Ubuntu 16.04 LTS, SDD Volume Type)
resource "google_composer_environment" "name_0" {
  name     = "composer-env-${local.name_suffix}"
  region   = "us-central1"
  project  = var.project_id
  composer = google_composer_environment.name_0.id
  version = "~> 10.0"

  # Add a default network interface to allow traffic from the VPC
  network_interface {
    subnetwork = google_compute_subnetwork.default.id
    access_config {
      # add external ip to fetch packages
    }
  }

  # Create a new instance
  # https://www.terraform.io/docs/providers/google/r/compute_instance.html#service_account
  # https://www.terraform.io/docs/providers/google/r/compute_instance.html#tag_key
  metadata_startup_script = "echo 'Hello from Terraform!' > index.html"

  # Startup script
  startup_script = file("${path.module}/startup.sh")

  # Startup script on instance for provisioning
  # https://www.terraform.io/docs/providers/google/r/compute_instance.html#service_account
  metadata_startup_script_ps1 = file("${path.module}/startup-ps1.sh")

  # Startup script on instance for reboot
  # https://www.terraform.io/docs/providers/google/r/compute_instance.html#service_account
  metadata_startup_script_ps1_ps2 = file("${path.module}/startup-ps1-ps2.sh")

  # Startup script on instance for restart
  # https://www.terraform.io/docs/providers/google/r/compute_instance.html#service_account
  metadata_startup_script_ps1_ps2_ps3 = file("${path.module}/startup-ps1-ps2-ps3.sh")

  # Startup script on instance for restart
  # https://www.terraform.io/docs/providers/google/r/compute_instance.html#service_account
  metadata_startup_script_ps1_ps2_ps3_ps4 = file("${path.module}/startup-ps1-ps2-ps3-ps4.sh")

  # Startup script on instance for restart
  # https://www.terraform.io/docs/providers/google/r/compute_instance.html#service_account
  metadata_startup_script_ps1_ps2_ps3_ps4_ps5 = file("${path.module}/startup-ps1-ps2-ps3-ps4-ps5.sh")

  # Startup script on instance for restart
  # https://www.terraform.io/docs/providers/google/r/compute_instance.html#service_account
  metadata_startup_script_ps1_ps2_ps3_ps4_ps5_ps6 = file("${path.module}/startup-ps1-ps2-ps3-ps4-ps5-ps6.sh")

  # Startup script on instance for restart
  # https://www.terraform.io/docs/providers/google/r
}
