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
  description = "Path to the service account credentials file."
}

# local block
locals {
  # create a local variable to hold the name of the bucket
  bucket_name = "my-bucket-name"
}

