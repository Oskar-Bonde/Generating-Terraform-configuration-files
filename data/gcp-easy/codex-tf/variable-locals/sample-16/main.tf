terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block 
provider "google" {
  credentials = file("account.json")
  project     = "my-project"
  region      = "us-central1"
}

# variable block
variable "name_0" {
  default = "my-project"
}

# local block
locals {
  my_zone = "us-central1-a"
}

