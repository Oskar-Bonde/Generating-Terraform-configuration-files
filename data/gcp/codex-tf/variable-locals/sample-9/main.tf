terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with default settings
provider "google" {
  region = "us-central1"
  zone   = "us-central1-c"
}

# a string type variable called name with default value "service"
variable "name_0" {
  default = "service"
}

# local block with a common labels block. service is set to name variable
# and environment is set to "dev"
locals {
  common_labels = {
    service  = var.name_0
    environment = "dev"
  }
}

