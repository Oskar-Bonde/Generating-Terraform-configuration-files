terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
provider "google-beta" {
}

# create dns policy for compute instance
resource "google_dns_managed_zone" "name_0" {
  name = "my-dns-zone"
}

