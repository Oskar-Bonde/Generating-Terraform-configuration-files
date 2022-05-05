terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
provider "google" {
  project = var.project
  region  = var.region
}

# create dns policy
resource "google_dns_policy" "name_0" {
  name = "dns-policy"
}

