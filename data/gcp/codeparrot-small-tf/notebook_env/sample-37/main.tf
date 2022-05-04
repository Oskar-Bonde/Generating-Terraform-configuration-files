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
# notebooks-environment block to create a new machine with the latest version of terraform
resource "google_notebooks_instance" "name_0" {
  name = "my-instance-${random_suffix}"
  location = "europe"
  machine_type = "europe-west4"
  # machine_image = "debian-cloud/debian-9"
  # machine_name = "my-machine"
  # machine_network = "default"
  # network_interface {
  #   network = "default"
  #   access_config {
  #     }
  # }
}

