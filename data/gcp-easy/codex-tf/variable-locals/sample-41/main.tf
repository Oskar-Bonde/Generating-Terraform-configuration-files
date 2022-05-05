terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block 
provider "google" {
  credentials = file("${path.module}/credentials.json")
  project     = var.name_0
  region      = var.region
}

# variable block
variable "name_0" {
  description = "The project ID to deploy to."
  type        = string
}

# local block
locals {
  # local variable
  bucket_name = "my-bucket-name"
}

