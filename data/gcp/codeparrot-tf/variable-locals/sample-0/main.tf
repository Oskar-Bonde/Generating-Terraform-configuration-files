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

# a string type variable called name with default value "service"
variable "name_0" {
  type = string
}

# local block with a common labels block. service is set to name variable
variable "name_1" {
  type = object({
    name = string
  })
  default = null
}

