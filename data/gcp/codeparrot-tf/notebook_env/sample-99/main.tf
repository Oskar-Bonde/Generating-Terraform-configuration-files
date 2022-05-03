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

# create google notebooks enviroment, use container image located in repository gcr.io/deeplearning-platform-release/base-cpu. Use name notebooks-environment and location europe west4 apex to find your notebooks.
resource "google_notebooks_instance" "name_0" {
  name = "notebooks-instance-${random_suffix}"
  location = "europe-west4-a"
  machine_type = "e2-medium"
  tags = ["notebooks"]
}

