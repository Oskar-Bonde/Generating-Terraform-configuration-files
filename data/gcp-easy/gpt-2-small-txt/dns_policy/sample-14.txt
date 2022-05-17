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

# create dns policyresource "google_dns_managed_zone" "zone" {
  name = "my-dns-zone"
  dns_name = "my-dns-zone"
  description = "My DNS zone"
}

