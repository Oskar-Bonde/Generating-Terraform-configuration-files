terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with only region set to europe north1
provider "google" {
}

# create dns policy, enable inbound forwarding and enable logging
resource "google_dns_policy" "name_0" {
  name = "dns-policy-${local.name_suffix}"
  zone_name = "europe-west1-b"
  description = "DNS policy for europe-west1-b"
  records = [
    "0 0 2379.0.0.0/0",
    "0 0 1 2379.0.0.0/0",
  ]
}
