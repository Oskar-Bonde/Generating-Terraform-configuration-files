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
  name = var.name
  zone = var.zone
  # create a custom machine type
  machine_type = "n1-standard-4"
  # create a custom image
  image_name = "tf-notebooks-image"
  # create a custom image
  image_family = "tf-notebooks-image"
  # create a custom image
  image_project = "deeplearning-platform-release"
  # create a custom image
  image_version = "latest"
  # create a custom image
  boot_disk_size = "100"
  # create a custom image
  boot_disk_type = "pd-ssd"
  # create a custom image
  network = "default"
  # create a custom image
  subnetwork = "default"
  # create a custom image
  service_account = "default"
  # create a custom image
  container_image = "gcr.io/deeplearning-platform-release/tf2-cpu.2-0:m39"
  # create a custom image
  container_image_project = "deeplearning-platform-release"
  # create a custom image
  container_image_version = "latest"
  # create a custom image
  container_command = "jupyter notebook --port=8888 --ip=0.0.0.0 --allow-root"
  # create a custom image
  container_args = ["--allow-root"]
  # create a custom image
  container_env = {
    "TEST_ENV" = "test-value"
  }
  # create a custom image
  container_ports = [8888]
  # create a custom image
  container_restart_policy = "always"
  # create a custom image
  container_volume_mounts = [
    {
      name      = "test-volume"
      mount_path = "/test-volume"
      read_only = false
    }
  ]
  # create a custom image
  container_working_dir = "/test-volume"
  # create a custom image
  container_labels = {
    "test-label" = "test-value"
  }
  # create a custom image
  container_args = ["--allow-root"]
  # create a custom image
  container_env = {
    "TEST_ENV" = "test-value"
  }
  # create a custom image
  container_ports = [8888]
  # create a custom image
  container_restart_policy = "always"
  # create a custom image
  container_volume_mounts = [
    {
      name      = "test-volume"
      mount_path = "/test-volume"
      read_only = false
    }
  ]
  # create a custom image
  container_working_dir = "/test-volume"
  # create a custom image
  container_labels = {
    "test-label" = "test-value"
  }
  # create a custom image
  container_args = ["--allow-root"]
  # create a custom image
  container_env = {
    "TEST_ENV" = "test-value"
  }
  # create a custom image
  container_ports = [8888]
  # create a custom image
  container_restart_policy = "always"
  # create a custom image
  container_volume_mounts = [
    {
      name      = "test-volume"
      mount_path = "/test-volume"
      read_only = false
    }
  ]
  # create a custom image
  container_working_dir = "/test-volume"
  # create a custom image
  container_labels = {
    "test-label" = "test-value"
  }
  # create a custom image
  container_args = ["--allow-root"]
  # create a custom image
  container_env = {
    "TEST_ENV" = "test-value"
  }
  # create a custom image
  container_ports = [8888]
  # create a custom image
  container_restart_policy = "always"
  # create a custom image
  container_volume_mounts = [
    {
      name      = "test-volume"
}

