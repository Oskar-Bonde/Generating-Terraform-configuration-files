terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
provider "google" {
}

# variable block
variable "name_0" {
  description = "GCE ssh user"
}

# local block
variable "name_1" {
  description = "GCE ssh key file"
}

