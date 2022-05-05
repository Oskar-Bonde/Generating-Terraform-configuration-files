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
  project     = "my-project"
  region      = "us-central1"
}

# variable block
variable "name_0" {
  description = "The project to deploy to"
  default     = "my-project"
}

# local block
locals {
  # ...
}

