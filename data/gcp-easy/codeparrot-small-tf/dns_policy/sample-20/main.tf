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

# create dns policy
resource "google_dns_policy" "name_0" {
  name = "my-dns-policy"
  description = "Terraform example dns policy"
  location = "global"
  description = "Terraform example dns policy"
}

