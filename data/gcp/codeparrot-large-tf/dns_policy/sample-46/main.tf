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
  policy = [
    {
      # DNS zone
      delegation_set_id = "${google_dns_managed_zone.env_dns_zone.id}"
      description = "DNS zone"
      name = "env.dns-zone"
      # DNS record
    },
  ]
}

