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
  name = "dns-policy"
  project = var.project_id
  dns_policy_definitions = [
    {
      name = "example.com.",
      enable_inbound_forwarding = true
    },
  ]
}

