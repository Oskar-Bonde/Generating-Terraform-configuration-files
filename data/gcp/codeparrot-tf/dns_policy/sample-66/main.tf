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
  enable_logging = true

  # Cloudflare DNS zone
  dns_name = "dsp-envs"

  # Cloudflare record sets
  managed_zone = "europe-west1-b"

  # Cloudflare record sets
  managed_zone_update_policy {
    managed_zone = "europe-west1-b"
    update_policy {
      type = "A"
    }
  }

  # Cloudflare DNS records
  managed_zone_record_sets = [
    "europe-west1-b",
  ]

  # Cloudflare DNS zone rrset
  managed_zone_rr_set = [
    "europe-west1-b",
  ]
}

