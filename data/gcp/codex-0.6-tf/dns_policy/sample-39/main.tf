terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with only region set to europe north1
provider "google" {
  region = "europe-north1"
}

# create dns policy, enable inbound forwarding and enable logging
resource "google_dns_policy" "name_0" {
  name = "dns-policy-example"
  description = "DNS policy example"
  enable_inbound_forwarding = true
  enable_logging = true
}

