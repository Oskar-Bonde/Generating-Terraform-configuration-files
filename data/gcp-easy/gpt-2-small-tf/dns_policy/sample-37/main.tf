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

# create dns policy for compute instances
resource "google_dns_managed_zone" "name_0" {
  name = "my-dns-zone"
  dns_name = "my-dns-zone"
}

