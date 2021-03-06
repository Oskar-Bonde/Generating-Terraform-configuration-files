terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
provider "google" {
  credentials = file("${path.module}/account.json")
  project     = var.project
  region      = var.region
}

# create google notebooks enviroment
resource "google_notebooks_environment" "name_0" {
  name          = var.name
  project       = var.project
  region        = var.region
  machine_type  = var.machine_type
  disk_size_gb  = var.disk_size_gb
  network       = var.network
  subnetwork    = var.subnetwork
  service_account = var.service_account
  install_gpu_driver = var.install_gpu_driver
  container_image_uri = var.container_image_uri
  container_image_project = var.container_image_project
  container_image_family = var.container_image_family
  container_image_version = var.container_image_version
  no_proxy_access = var.no_proxy_access
  no_public_ip = var.no_public_ip
  no_proxy_access_ports = var.no_proxy_access_ports
  no_ip_forwarding = var.no_ip_forwarding
  no_remove_public_ip_on_stop = var.no_remove_public_ip_on_stop
  no_strict_validate_instance_name = var.no_strict_validate_instance_name
  no_enable_stackdriver_monitoring = var.no_enable_stackdriver_monitoring
  no_enable_stackdriver_logging = var.no_enable_stackdriver_logging
  no_enable_stackdriver_debugger = var.no_enable_stackdriver_debugger
  no_enable_stackdriver_profiler = var.no_enable_stackdriver_profiler
  no_enable_stackdriver_kubernetes = var.no_enable_stackdriver_kubernetes
  no_enable_stackdriver_application_monitoring = var.no_enable_stackdriver_application_monitoring
  no_enable_stackdriver_application_logging = var.no_enable_stackdriver_application_logging
  no_enable_stackdriver_application_debugger = var.no_enable_stackdriver_application_debugger
  no_enable_stackdriver_application_profiler = var.no_enable_stackdriver
}

