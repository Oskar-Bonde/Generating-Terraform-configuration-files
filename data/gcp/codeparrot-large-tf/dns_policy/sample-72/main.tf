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
  name = "dns-policy-${var.random_suffix}"
  zone = "europe-west1-b"

  # DNS zone where to create the record
  zone_update_policy {
    type = "list"
    items {
      # change the priority from 1 to 9
      priority = 1
      weight = 9
    }
  }

  # DNS record
  record {
    name = "www.google.com."
    ttl  = 300
    type  = "A"
    records = [
      "10 inbound-smtp.google.com.",
    ]
  }
}

