terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with default settings
provider "google" {
}

# a string variable called name with default value "service"
variable "name_0" {
  description = "A name of the service"
  type        = string
  default     = "service"
}

# local block with a common labels block. service is set to name variable
locals {
  common_labels = {
    service     = var.name_0
  }
}