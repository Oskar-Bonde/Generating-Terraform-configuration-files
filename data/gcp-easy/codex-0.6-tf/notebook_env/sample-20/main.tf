terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
provider "google" {
  project = var.project
  region  = var.region
}

# create google notebooks enviroment
resource "google_notebooks_environment" "name_0" {
  name = "my-notebook-env"
  project = var.project
  region = var.region
  machine_type = "n1-standard-4"
  network = "default"
  subnetwork = "default"
  service_account = "default"
  boot_disk_size_gb = 100
  boot_disk_type = "pd-standard"
  no_proxy_access = true
  no_public_ip_access = true
  no_proxy_access = true
  no_public_ip_access = true
  container_image_name = "gcr.io/deeplearning-platform-release/tf2-cpu"
  container_image_project = "deeplearning-platform-release"
  container_image_version = "latest"
  container_image_family = "tf2-cpu"
  container_image_fullname = "gcr.io/deeplearning-platform-release/tf2-cpu:latest"
  container_image_fullname_override = "gcr.io/deeplearning-platform-release/tf2-cpu:latest"
  container_image_fullname_override_project = "deeplearning-platform-release"
  container_image_fullname_override_version = "latest"
  container_image_fullname_override_family = "tf2-cpu"
  container_image_fullname_override_family_project = "deeplearning-platform-release"
  container_image_fullname_override_family_version = "latest"
  container_image_fullname_override_family_version_project = "deeplearning-platform-release"
  container_image_fullname_override_family_version_project_zone = "us-central1-a"
  container_image_fullname_override_family_version_project_zone_instance = "my-instance"
  container_image_fullname_override_family_version_project_zone_instance_name = "my-instance-name"
  container_image_fullname_override_family_version_project_zone_instance_name_zone = "us-central1-a"
  container_image_fullname_override_family_version_project_zone_instance_name_zone_project = "my-project"
  container_image_fullname_override_family_version_project_zone_instance_name_zone_project_region = "us-central1"
  container_image_fullname_override_family_version_project_zone_instance_name_zone_project_region_project = "my-project"
  container_image_fullname_override_family_version_project_zone_instance_name_zone_project_region_project_region = "us-central1"
  container_image_fullname_override_family_version_project_zone_instance_name_zone_project_region_project_region_zone = "us-central1-a"
  container_image_fullname_override_family_version_project_zone_instance_name_zone_project_region_project_region_zone_instance = "my-instance"
  container_image_fullname_override_family_version_project_zone_instance_name_zone_project_region_project_region_zone_instance_name = "my-instance-name"
  container_image_fullname_override_family_version_project_zone_instance_name_zone_project_region_project_region_zone_instance_name_project = "my-project"
  container_image_fullname_override_family_version_project_zone_instance_name_zone_project_region_project_region_zone_instance_name_project_region = "us-central1"
  container_image_fullname_override_family_version_project_zone_instance_name_zone_project_region_project_region_zone_instance_name_project_region_zone = "us-central1-a"
  container_image_fullname_override_family_version_project_zone_instance_name_zone_project_region_project_region_zone_instance_name_project_region_zone_instance = "my-instance"
  container_image_fullname_override_family_version_project_zone_instance_
}

