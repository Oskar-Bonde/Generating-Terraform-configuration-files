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
# reference:
# https://cloud.google.com/deeplearning-platform/release/docs/latest/installing-google-cloud-notebooks
resource "google_notebooks_instance" "name_0" {
  name = "my-instance-${random_suffix}"
  location = "europe"
  machine_type = "europe-west4"
  machine_image = "gcr.io/deeplearning-platform-release/base-cpu:latest"
  #  location = "europe-west4-a"
  #  #  location = "europe-west4-b"
  #  #  location = "europe-west4-c"
  #  #  location = "europe-west4-d"
  #  #  location = "europe-west4-e"
  #  #  location = "europe-west4-f"
  #  #  location = "europe-west4-g"
  #  #  location = "europe-west4-h"
  #  #  location = "europe-west4-j"
  #  #  location = "europe-west4-k"
  #  #  location = "europe-west4-l"
  #  #  location = "europe-west4-m"
  #  #  location = "europe-west4-n"
  #  #  location = "europe-west4-p"
  #  #  location = "europe-west4-q"
  #  #  location = "europe-west4-r"
  #  #  location = "europe-west4-s"
  #  #  location = "europe-west4-t"
  #  #  location = "europe-west4-u"
  #  #  location = "europe-west4-v"
  #  #  location = "europe-west4-w"
  #  #  location = "europe-west4-x"
  #  #  location = "europe-west4-y"
  #  #  location = "europe-west4-z"
  #  #  location = "europe-west4-b"
  #  #  location = "europe-west4-c"
  #  #  location = "europe-west4-d"
  #  #  location = "europe-west4-e"
  #  #  location = "europe-west4-f"
  #  #  location = "europe-west4-g"
  #  #  location = "europe-west4-h"
  #  #  location = "europe-west4-j"
  #  #  location = "europe-west4-k"
  #  #  location = "europe-west4-l"
  #  #  location = "europe-west4-m"
  #  #  location = "europe-west4-n"
  #  #  location = "europe-west4-p"
  #  #  location = "europe-west4-q"
  #  #  location = "
}

