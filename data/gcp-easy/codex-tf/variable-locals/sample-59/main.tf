terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block 
provider "google" {
  credentials = file("${var.name_0}")
  project     = "${var.project}"
  region      = "${var.region}"
}

# variable block
variable "name_0" {
  description = "Path to the JSON file containing the service account credentials."
}

# local block
locals {
  # create a random string for the instance name
  instance_name = "${random_id.instance_name.hex}"
}

