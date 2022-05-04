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
  default = "ubuntu"
}

# local block
variable "name_1" {
  default = "~/.ssh/id_rsa.pub"
}

