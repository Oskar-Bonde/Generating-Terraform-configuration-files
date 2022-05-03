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
resource "local_file" "name_1" {
  content = "Hello, Terraform Service"
}

