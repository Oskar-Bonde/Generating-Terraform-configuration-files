terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block 
provider "google" {
  credentials = file("${path.module}/account.json")
  project     = "my-project"
  region      = "us-central1"
}

# variable block
variable "name_0" {
  description = "The project ID to deploy to"
  default     = "my-project"
}

# local block
locals {
  name = "my-instance"
}

