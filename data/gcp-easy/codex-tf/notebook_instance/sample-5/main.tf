terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block 
provider "google" {
  credentials = "${file("${var.credentials_file}")}"
  project     = "${var.project}"
  region      = "${var.region}"
}

# create a notebook instance 
resource "google_ai_platform_notebook_instance" "name_0" {
  name = "${var.instance_name}"
  zone = "${var.zone}"
  machine_type = "${var.machine_type}"
  boot_disk_size_gb = "${var.boot_disk_size_gb}"
  boot_disk_type = "${var.boot_disk_type}"
  accelerator_type = "${var.accelerator_type}"
  accelerator_count = "${var.accelerator_count}"
  network = "${var.network}"
  subnetwork = "${var.subnetwork}"
  no_proxy_access = "${var.no_proxy_access}"
  no_public_ip = "${var.no_public_ip}"
  service_account = "${var.service_account}"
  container_image = "${var.container_image}"
  container_image_project = "${var.container_image_project}"
  container_image_version = "${var.container_image_version}"
  container_command = "${var.container_command}"
  container_args = "${var.container_args}"
  container_env = "${var.container_env}"
  container_ports = "${var.container_ports}"
  container_volume_type = "${var.container_volume_type}"
  container_volume_size_gb = "${var.container_volume_size_gb}"
  container_volume_name = "${var.container_volume_name}"
  container_volume_mount_point = "${var.container_volume_mount_point}"
  container_labels = "${var.container_labels}"
  container_accelerator_type = "${var.container_accelerator_type}"
  container_accelerator_count = "${var.container_accelerator_count}"
  container_image_type = "${var.container_image_type}"
  container_restart_policy = "${var.container_restart_policy}"
  container_scheduling = "${var.container_scheduling}"
  container_scheduling_max_restart
}

