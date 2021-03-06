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
  "policy_name": "dns-policy",
  "resource": "google_compute_dns_policy.dns_policy.name",
  "zone_name": "europe-west1-b"
}

