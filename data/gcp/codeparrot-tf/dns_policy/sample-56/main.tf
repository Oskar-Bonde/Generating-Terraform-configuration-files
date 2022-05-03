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
  zone_name = "europe-west1-b"
  description = "DNS Policy"
  network = "default"
  priority = 1
  access_config {
    nat_ip = google_compute_address.europe-west1-b-address.address
  }
}

