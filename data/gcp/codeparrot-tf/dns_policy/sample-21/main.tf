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
  name = "dns-policy-${random_suffix}"
  zone = "europe-west1-b"

  # DNS
  enable_inbound_forwarding = true
  policy = <<EOF
{
  "policy_name": "dns-policy-${random_suffix}",
  "rule_type": "FORWARD",
  "priority": 1,
  "direction": "INGRESS",
  "logging": true
}

