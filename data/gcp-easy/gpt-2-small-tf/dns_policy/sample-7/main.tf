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
  name = "my-dns-zone"
  dns_nameservers = ["my-dns-zone-1", "my-dns-zone-2"]
}

