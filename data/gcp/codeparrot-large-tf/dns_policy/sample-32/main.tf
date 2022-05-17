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

  # DNS zone where the instance is created
  zone_update_policy {
    update_policy = "REPLACE"

    # Reject all traffic that hasn't been whitelisted
    disable_rule = [
      "google.com",
      "8.8.8.8",
    ]
  }

  # DNS zone where the instance is created
  zone_update_policy {
    update_policy = "REPLACE"

    # Reject all traffic that hasn't been whitelisted
    disable_rule = [
      "google.com",
      "8.8.4.4",
    ]
  }

  # DNS zone where the instance is created
  zone_update_policy {
    update_policy = "REPLACE"

    # Reject all traffic that hasn't been whitelisted
    disable_rule = [
      "google.com",
      "8.8.8.8",
    ]
  }
}

