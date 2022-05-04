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

# create google notebooks enviroment, use container image located in repository gcr.io/deeplearning-platform-release/base-cpu. Use name notebooks-environment and location europe west4 avariable-file
resource "google_notebooks_instance" "name_0" {
  name = "my-instance-${random_suffix}"
  location = "europe-west4"
  machine_type = "europe-west4"
  machine_image = "gcr.io/deeplearning-platform-release/base-cpu:latest"
  initial_node_count = 1

  # Notebooks instance machine type, see variables.tf for more info
  # https://cloud.google.com/compute/docs/instances/create#machine_type
  # https://cloud.google.com/compute/docs/instances/create#machine_image
  # https://cloud.google.com/compute/docs/instances/create#initial_node_count
  # https://cloud.google.com/compute/docs/instances/create#initial_node_count
  # https://cloud.google.com/compute/docs/instances/create#name
  # https://cloud.google.com/compute/docs/instances/create#machine_image
  # https://cloud.google.com/compute/docs/instances/create#machine_type
  # https://cloud.google.com/compute/docs/instances/create#machine_image
  # https://cloud.google.com/compute/docs/instances/create#name
  # https://cloud.google.com/compute/docs/instances/create#machine_type
  # https://cloud.google.com/compute/docs/instances/create#machine_type
  # https://cloud.google.com/compute/docs/instances/create#name
  # https://cloud.google.com/compute/docs/instances/create#name
  # https://cloud.google.com/compute/docs/instances/create#name
  # https://cloud.google.com/compute/docs/instances/create#name
  # https://cloud.google.com/compute/docs/instances/create#name
  # https://cloud.google.com/compute/docs/instances/create#name
  # https://cloud.google.com/compute/docs/instances/create#name
  # https://cloud.google.com/compute/docs/instances/create#name
  # https://cloud.google.com/compute/docs/instances/create#name
  # https://cloud.google.com/compute/docs/instances/create#name
  # https://cloud.google.com/compute/docs/instances/create#name
  # https://cloud.google.com/compute/docs/instances/create#name
  # https://cloud.google.com/compute/docs/instances/create#name
  # https://cloud.google.com/compute/docs/instances/create#name
  # https://cloud.google.com/compute/docs/instances/create#name
  # https://cloud.google.com/compute/docs/instances/create#name
  # https://cloud.google.com/compute/docs/instances/create#name
  # https://cloud.google.com/compute/docs/instances/create#name
  # https://cloud.google.com/compute/docs/instances/create#name
  # https://cloud.google.com/compute/docs/instances/create#name
  # https://cloud.google.
}

