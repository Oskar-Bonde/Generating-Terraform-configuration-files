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

  # DNS zone where the instances should be created
  zone_update_policy {
    update_policy = "REPLACE"

    # Reject all traffic that hasn't been created
    delete_rule = [
      "ALL_IP_RANGES",
    ]
  }

  # DNS zone where the instances should be created
  zone_update_policy {
    update_policy = "REPLACE"

    # Reject all traffic that hasn't been created
    delete_rule = [
      "ALL_IP_RANGES",
    ]
  }

  # DNS zone where the instances should be created
  zone_update_policy {
    update_policy = "REPLACE"

    # Reject all traffic that hasn't been created
    delete_rule = [
      "ALL_IP_RANGES",
    ]
  }
}

