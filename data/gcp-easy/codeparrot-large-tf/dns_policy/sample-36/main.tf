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
  name        = "dns-policy-${local.name_suffix}"
  enable_inbound_forwarding = true
  project       = var.project_id
  description  = "DNS policy"

  dns_policy {
    policy_type = "POLICY_SSL_AUTO"
  }
}

