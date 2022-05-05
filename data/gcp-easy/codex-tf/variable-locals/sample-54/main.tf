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
  type = string
}

# local block
locals {
  bucket_name = "my-bucket"
}

