terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block 
provider "google" {
  credentials = file("account.json")
  project     = "my-project"
  region      = "us-central1"
}

# variable block
variable "name_0" {
  type = string
}

# local block
locals {
  bucket_name = "${var.name_0}-bucket"
}

