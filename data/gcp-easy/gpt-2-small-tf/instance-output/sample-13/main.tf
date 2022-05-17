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

# a compute instance resourcevariable "instance_name" {
  type = "string"
}

# an output blockvariable "instance_name" {
  type = "string"
}

