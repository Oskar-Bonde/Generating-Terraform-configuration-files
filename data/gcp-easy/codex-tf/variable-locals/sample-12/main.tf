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
  type = string
}

# local block
locals {
  network_name = "terraform-network"
  subnet_name  = "terraform-subnet"
}

