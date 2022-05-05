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
  type = string
}

# local block
locals {
  project_id = var.name_0
}

