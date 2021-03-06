# Terraform block with google provider
terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
provider "google" {
  region = "europe-north1"
}

# create dns policy
resource "google_dns_policy" "name_0" {
  name                      = "example-policy"
  enable_inbound_forwarding = true
  enable_logging = true
}

