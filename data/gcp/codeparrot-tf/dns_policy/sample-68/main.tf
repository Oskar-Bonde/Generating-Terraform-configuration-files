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
  name = "dns-policy-${random_id.id.hex}"
  zone = "europe-west1-b"

  # DNS zone
  policy = <<EOF
{
  "policy_name": "dns-policy-${random_id.id.hex}",
  "zone_name": "europe-west1-b"
}
