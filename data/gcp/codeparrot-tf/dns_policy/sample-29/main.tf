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
  type = "A"

  # DNS zone
  policy = [
    {
      # change the zone name to avoid collision with other zones
      "name": "www.example.com.",
      "zone": "europe-west1-b"
    },
  ]
}

