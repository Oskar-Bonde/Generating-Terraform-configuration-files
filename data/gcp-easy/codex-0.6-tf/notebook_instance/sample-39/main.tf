terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block 
provider "google" {
  credentials = file("${path.module}/credentials.json")
  project     = var.project
  region      = var.region
}

# create a notebook instance 
resource "google_notebooks_instance" "name_0" {
  name     = var.name
  vm_image = var.vm_image
  machine_type = var.machine_type
  boot_disk_size_gb = var.boot_disk_size_gb
  boot_disk_type = var.boot_disk_type
  network = var.network
  subnetwork = var.subnetwork
  no_public_ip = var.no_public_ip
  no_proxy_access = var.no_proxy_access
  service_account = var.service_account
  tags = var.tags
  location = var.location
  accelerator_type = var.accelerator_type
  accelerator_count = var.accelerator_count
  container_image = var.container_image
  container_image_project = var.container_image_project
  container_image_version = var.container_image_version
  container_command = var.container_command
  container_args = var.container_args
  container_env = var.container_env
  container_ports = var.container_ports
  container_volume_type = var.container_volume_type
  container_volume_size_gb = var.container_volume_size_gb
  container_mount_host_path = var.container_mount_host_path
  container_post_startup_script_uri = var.container_post_startup_script_uri
  container_pre_startup_script_uri = var.container_pre_startup_script_uri
  container_restart_policy = var.container_restart_policy
  container_working_dir = var.container_working_dir
  container_labels = var.container_labels
  container_image_credentials = var.container_image_credentials
  container_image_pull_policy = var.container_image_pull_policy
  container_image_pull_secret = var.container_image_pull_secret
  container_image_disable_vulnerability_scan = var.container_image_disable_vulnerability_scan
  container_image_vulnerability_scan_notification_config = var.container_image_vulnerability_scan_notification_config
  container_image_vulnerability_scan_notification_config_pubsub_topic = var.container_image_vulnerability_scan_notification_config_pubsub_topic
  container_image_vulnerability_scan_notification_config_filter = var.container_image_vulnerability_scan_notification_config_filter
  container_image_vulnerability_scan_notification_config_description = var.container_image_vulnerability_scan_notification_config_description
  container_image_vulnerability_scan_notification_config_enabled = var.container_image_vulnerability_scan_notification_config_enabled
  container_image_vulnerability_scan_notification_config_pubsub_auth_method = var.container_image_vulnerability_scan_notification_config_pubsub_auth_method
  container_image_vulnerability_scan_notification_config_pubsub_service_account_email = var.container_image_vulnerability_scan_notification_config_pubsub_service_account_email
  container_image_vulnerability_scan_notification_config_pubsub_secret_name = var.container_image_vulnerability_scan_notification_config_pubsub_secret_name
  container_image_vulnerability_scan_notification_config_pubsub_secret_namespace = var.container_image_vulnerability_scan_notification_config_pubsub_secret_namespace
  container_image_vulnerability_scan_notification_config_pubsub_token_type = var.container_image_vulnerability_scan_notification_config_pubsub_token_type
  container_image_vulnerability_scan_notification_config_pubsub_token_value = var.container_image_vulnerability_scan_notification_config_pubsub_token_value
  container_image_vulnerability_scan_notification_config_pubsub_token_value_from_file = var.container_image_vulnerability_scan_notification_config_pubsub_token_value_from_file
  container_image_vulnerability_scan_notification_config_pubsub_token_value_from_file_path
}

