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

  # DNS zone where to create the record
  zone_name = "example.com."

  # DNS record
  record {
    name = "tf-test-zone"
    type = "A"

    rrdatas = ["192.0.2.1"]
  }
}

