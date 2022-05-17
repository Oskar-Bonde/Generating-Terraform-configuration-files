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

  # dns_policy_name is the name of the dns policy
  # https://cloud.google.com/dns/docs/dns-policy-reference#create_policy
  zone_name = "europe-west1-b"

  # dns_policy_create is a list of DNS policy definitions
  # https://cloud.google.com/dns/docs/dns-policy-reference#create_policy
  # https://cloud.google.com/dns/docs/dns-policy-reference#create_policy
  # https://cloud.google.com/dns/docs/dns-policy-reference#create_policy
  # https://cloud.google.com/dns/docs/dns-policy-reference#create_policy
  # https://cloud.google.com/dns/docs/dns-policy-reference#create_policy
  # https://cloud.google.com/dns/docs/dns-policy-reference#create_policy
  # https://cloud.google.com/dns/docs/dns-policy-reference#create_policy
  # https://cloud.google.com/dns/docs/dns-policy-reference#create_policy
  # https://cloud.google.com/dns/docs/dns-policy-reference#create_policy
  # https://cloud.google.com/dns/docs/dns-policy-reference#create_policy
  # https://cloud.google.com/dns/docs/dns-policy-reference#create_policy
  # https://cloud.google.com/dns/docs/dns-policy-reference#create_policy
  # https://cloud.google.com/dns/docs/dns-policy-reference#create_policy
  # https://cloud.google.com/dns/docs/dns-policy-reference#create_policy
  # https://cloud.google.com/dns/docs/dns-policy-reference#create_policy
  # https://cloud.google.com/dns/docs/dns-policy-reference#create_policy
  # https://cloud.google.com/dns/docs/dns-policy-reference#create_policy
  # https://cloud.google.com/dns/docs/dns-policy-reference#create_policy
  # https://cloud.google.com/dns/docs/dns-policy-reference#create_policy
  # https://cloud.google.com/dns/docs/dns-policy-reference#create_policy
  # https://cloud.google.com/dns/docs/dns-policy-reference#create_policy
  # https://cloud.google.com/dns/docs/dns-policy-reference#create_policy
  # https://cloud.google.com/dns/docs/dns-policy-reference#create_policy
  # https://cloud.google.com/dns/docs/dns-policy-reference#create_policy
  # https://cloud.google.com/dns/docs/dns-policy-reference#create_policy
  # https://cloud.google.com/dns/docs/dns-policy-reference#create_policy
  # https://cloud.google.com/dns/docs/dns-policy-reference#create_policy
  # https://cloud.google.com/dns/docs/dns-policy-reference#create_policy
  # https://cloud.google.com/dns/docs/dns-policy-reference#create_policy
  # https://cloud.google.com/dns/docs/dns-policy-reference#create
}

