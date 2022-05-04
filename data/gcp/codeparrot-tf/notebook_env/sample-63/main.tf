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

# create google notebooks enviroment, use container image located in repository gcr.io/deeplearning-platform-release/base-cpu. Use name notebooks-environment and location europe west4 asia-east1
resource "google_notebooks_instance" "name_0" {
  name = "notebooks-instance-${local.name_suffix}"
  location = "europe-west4-a"
  machine_type = "europe-west4"
  tags = ["notebooks"]
  can_ip_forward = false
  can_ip_reverse = false
  can_ip_addresses = false
  labels = {
    "europe-west4-a" = "europe-west4a"
  }
}
