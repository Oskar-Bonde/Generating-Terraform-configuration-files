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
  name     = "composer-environment-${random_suffix}"
  region   = "us-central1"
  project  = var.project_id
  composer = google_composer_environment.name_0.id

  # Create a container image for the composer environment
  image = "debian-cloud/debian-9"
  # Set to true to use the latest image
  recreate_pod_network = true

  # Set to false to not recreate the container
  recreate_coreos_config = false

  # Set to false to not recreate the image
  recreate_image = false

  # Set to false to not recreate the image
  private_cluster = false

  # Set to false to not recreate the image
  private_node_config = false

  # Set to false to not recreate the image
  private_node_service_account = false

  # Set to false to not recreate the image
  private_node_service_account_email = false

  # Set to false to not recreate the image
  private_node_service_account_scopes = false

  # Set to false to not recreate the image
  public_ssh_key = false

  # Set to false to not recreate the image
  public_ssh_key_file = false

  # Set to false to not recreate the image
  private_ssh_key_file = false

  # Set to false to not recreate the image
  private_ssh_key_file_private = false

  # Set to false to not recreate the image
  private_ssh_key_file_private_json = false

  # Set to false to not recreate the image
  private_ssh_key_file_private_json_list = []

  # Set to false to not recreate the image
  private_ssh_key_file_private_json_list_no_signing = false

  # Set to false to not recreate the image
  private_ssh_key_file_private_json_list_no_signing_list = []

  # Set to false to not recreate the image
  private_ssh_key_file_private_json_list_no_signing_list_no_signing = false

  # Set to false to not recreate the image
  private_ssh_key_file_private_json_list_private_json = false

  # Set to false to not recreate the image
  private_ssh_key_file_private_json_list_private_json_list = []

  # Set to false to not recreate the image
  private_ssh_key_file_private_json_list_private_json_list_no_signing_list_no_signing = false

  # Set to false to not recreate the image
  private_ssh_key_file_private_json_list_private_json_list_no_signing_list_no_signing = false

  # Set to false to not recreate the image
  private_ssh_key_file_private_json_list_private_json_list_no_signing_list_no_signing = false

  # Set to false to not recreate the image
  private_ssh_key_file_private_json_list_private_json_list_no_signing_list_no_signing_list = false

  # Set to false to not recreate the image
  private_ssh_key_file_private_
}
