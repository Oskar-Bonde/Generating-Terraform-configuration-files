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
  name        = "dns-policy-${random_suffix}"
  enable_inbound_forwarding = true
  policy_type  = "SINGLE_IP_INTERNALLY_REDUNDANT"
  dns_policy_options {
    max_ttl = "5"
  }
}

