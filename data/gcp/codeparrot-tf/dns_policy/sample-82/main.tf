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

  # DNS zone where to create the record
  ttl = 300

  # DNS record
  name = "tf-example-dns-policy"

  # DNS record
  records = [
    "ns-cloud-a",
    "ns-cloud-b",
    "ns-cloud-c"
  ]
}
