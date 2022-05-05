terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block 
provider "google" {
  credentials = file("${path.module}/../../credentials.json")
  project     = var.name_0
  region      = var.region
}

# variable block
variable "name_0" {
  description = "The project to deploy to"
  type        = string
}

# local block
locals {
  network_name = "my-network"
}

