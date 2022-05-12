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
  name = "dns-policy-${var.environment_code}-${var.environment_name}"
  zone_name = "europe-west1-b"

  # DNS zone name where the target service is located
  zone_dns_name = "dsp-envs"

  # DNS recordset name to be created
  record_set = "europe-west1-b"

  # DNS record name to be created
  record_name = "dsp-envs"

  # Cloud DNS zone name where the target service is located
  zone_dns_zone = "europe-west1-b"

  # Cloud DNS record name to be created
  record_name_servers = ["dsp-envs.cloud.google.com"]

  # Cloud DNS record name to be created
  record_name_servers_secondary = ["dsp-envs-secondary.cloud.google.com"]
}

