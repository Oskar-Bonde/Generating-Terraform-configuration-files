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

  # DNS zone name where the target domain resides
  zone_name = "dsp-envs"

  # DNS zone name where the target domain resides
  zone_dns_name = "dsp-envs.${var.domain}"

  # DNS record name to be created
  record_name = "dsp-envs"

  # DNS record name to be created
  record_type = "A"

  # DNS record name to be created
  record_value = "${google_dns_managed_zone.env_dns_zone.name}"

  # DNS record name to be created
  record_ttl = "300"
}

