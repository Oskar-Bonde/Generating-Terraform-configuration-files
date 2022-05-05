terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block 
provider "google" {
  project = var.name_0
  region  = var.region
  zone    = var.zone
}

# variable block
variable "name_0" {
  type = string
}

# local block
locals {
  env = "dev"
}

