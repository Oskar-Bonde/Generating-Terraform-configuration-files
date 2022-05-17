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
  zone_name = "europe-west1-b"

  # DNS zone name where the target domain resides
  zone_dns_name = "dsp-envs"

  # DNS record name to allow DNS lookups
  record_name = "dsp-envs"

  # DNS record name to allow for ingress from the zone
  record_type = "A"

  # Cloud DNS zone name where the target domain resides
  zone_dns_name = "dsp-envs.cloudflare.com"

  # Cloud DNS record name to allow for ingress from the zone
  record_name = "dsp-envs.cloudflare.com"

  # Cloud DNS record name to allow for egress from the zone
  record_type = "A"

  # Cloud DNS zone name where the target domain resides
  zone_dns_name = "dsp-envs.cloudflare.com"

  # Cloud DNS record name to allow for egress from the zone
  record_name = "dsp-envs.cloudflare.com"

  # Cloud DNS record name to allow for egress from the zone
  record_type = "A"

  # Cloud DNS zone name where the target domain resides
  zone_dns_name = "dsp-envs.cloudflare.com"

  # Cloud DNS record name to allow for egress from the zone
  record_name = "dsp-envs.cloudflare.com"

  # Cloud DNS record name to allow for ingress from the zone
  record_type = "A"

  # Cloud DNS zone name where the target domain resides
  zone_dns_name = "dsp-envs.cloudflare.com"

  # Cloud DNS record name to allow for egress from the zone
  record_name = "dsp-envs.cloudflare.com"

  # Cloud DNS record name to allow for ingress from the zone
  record_type = "A"

  # Cloud DNS zone name where the target domain resides
  zone_dns_name = "dsp-envs.cloudflare.com"

  # Cloud DNS record name to allow for egress from the zone
  record_name = "dsp-envs.cloudflare.com"

  # Cloud DNS record name to allow for ingress from the zone
  record_type = "A"

  # Cloud DNS zone name where the target domain resides
  zone_dns_name = "dsp-envs.cloudflare.com"

  # Cloud DNS record name to allow for egress from the zone
  record_name = "dsp-envs.cloudflare.com"

  # Cloud DNS record name to allow for ingress from the zone
  record_type = "A"

  # Cloud DNS zone name where the target domain resides
  zone_dns_name = "dsp-envs.cloudflare.com"

  # Cloud DNS record name to allow for egress from the zone
  record_name = "dsp-envs.cloudflare.com"

  # Cloud DNS record name to allow for ingress from the zone
  record_type = "A"

  # Cloud DNS zone name where the target domain resides
  zone_dns_name = "dsp-envs.cloudflare.com"

  # Cloud DNS record name to allow for egress from the zone
  record_name = "dsp-envs.cloudflare.com"

  # Cloud DNS record name to allow for ingress from the
}

