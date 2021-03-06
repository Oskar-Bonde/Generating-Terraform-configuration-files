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

# create google notebooks enviroment, use container image located in repository gcr.io/deeplearning-platform-release/base-cpu. Use name notebooks-environment and location europe west4 a
# reference: https://cloud.google.com/deeplearning-platform/docs/reference/compute/instances/create#create_instance_from_template
resource "google_notebooks_instance" "name_0" {
  name = "my-instance-${random_suffix}"
  location = "europe"
  machine_type = "europe-west4"
  # machine_type = "europe-west4"
  # network_interface {
  #   network = "default"
  #   access_config {
  #     }
  # }
}

