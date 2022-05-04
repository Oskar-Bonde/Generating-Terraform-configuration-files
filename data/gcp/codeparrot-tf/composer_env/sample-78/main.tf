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

# create composer environment in region us-central1. Create software config and use image composer-2.0.0-preview.3-airflow-2.1.2
resource "google_composer_environment" "name_0" {
  name     = "composer-env-${random_suffix}"
  region  = "us-central1"

  config {
    node_config {
      machine_type = "e2-micro"

      # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
      # Custom roles:
      # https://cloud.google.com/iam/docs/understanding-roles
      service_account_roles = [
        "roles/logging.logWriter",
        "roles/monitoring.metricWriter",
        "roles/stackdriver.resourceMetadata.writer",
        "roles/storage.objectViewer",
        "roles/storage.objectViewer",
        "roles/monitoring.viewer"
      ]

      # Set machine type to e2-micro.
      # https://cloud.google.com/compute/docs/instances/configure-guest-accelerators#configure-guest-accelerators-for-a-vm
      # Set the instance count to 1,2,3 to enable power management.
      # https://cloud.google.com/compute/docs/instances/configure-guest-accelerators#configure-guest-accelerators-for-a-vm
      instance_count = 1

      # Set a list of instance tags to add to the instance spec.
      # https://cloud.google.com/compute/docs/reference/rest/v1/instance-tags#instance-tags
      tags = ["allow-ssh"]

      # Set a list of instance tags to add to the instance spec.
      # https://cloud.google.com/compute/docs/reference/rest/v1/instance-tags#instance-tags
      tags = ["allow-ssh"]

      # Set a list of instance tags to add to the instance spec.
      # https://cloud.google.com/compute/docs/reference/rest/v1/instance-tags#instance-tags
      tags = ["allow-ssh"]
    }
  }
}
