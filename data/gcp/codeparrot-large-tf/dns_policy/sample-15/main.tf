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
  zone = "europe-west1-b"

  # DNS zone
  policy = <<EOF
{
  "action": "allow",
  "priority": 1,
  "condition": {
    "title": "test",
    "description": "test",
    "expression": "test"
  },
  "direction": "INGRESS",
  "priority": 1,
  "action": {
    "type": "forward",
    "protocol": "tcp",
    "source": "0.0.0.0/0",
    "address": "0.0.0.0"
  },
  "source": "10.0.0.0/16",
  "source_port_range": "10.0.0.0/16",
  "destination_port_range": "10.0.0.0/16",
  "source_address_prefix": "10.0.0.0/16"
}

