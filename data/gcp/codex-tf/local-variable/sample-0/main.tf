terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with default settings
provider "google" {
  credentials = "${file("${path.module}/credentials.json")}"
  project     = "${var.project}"
}

# a string variable called name with default value "service"
variable "name_0" {
  default = "service"
}

# local block with a common labels block. service is set to name variable
locals {
  labels = {
    service = "${var.name_0}"
  }
}

