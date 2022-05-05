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
  description = "Path to the service account json file"
}

# local block
locals {
  # local variable
  zone = "us-central1-a"
}

