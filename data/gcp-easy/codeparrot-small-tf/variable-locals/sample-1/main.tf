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
  default = "ubuntu"
}

# local blockvariable
variable "name_1" {
  description = "GCE ssh key file"
  default = "~/.ssh/id_rsa.pub"
}

