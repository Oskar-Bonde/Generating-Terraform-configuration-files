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
  name        = "policy-%s"
  description = "Policy created while an audit_logging test is running"
  enable_inbound_forwarding = true
  enable_logging = true
}

