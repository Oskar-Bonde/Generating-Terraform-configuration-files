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
  managed_zone = google_dns_managed_zone.dns_zone.name
}

