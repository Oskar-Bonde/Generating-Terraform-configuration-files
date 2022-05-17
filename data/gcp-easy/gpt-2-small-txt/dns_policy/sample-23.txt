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

# create dns policyresource "google_dns_managed_zone" "dns_zone" {
  name = "my-zone"
  dns_name = "my-zone"
}

