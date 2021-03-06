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

  # DNS zone
  policy = "true"

  # allow outbound tcp traffic on all ports
  allow {
    ports = ["22", "80", "443"]
  }

  # allow outbound udp traffic on a port range
  allow {
    ports = ["1-65535"]
  }

  # allow outbound icmp traffic on a port range
  allow {
    ports = ["1-65535"]
  }

  # allow outbound udp traffic on a port range
  allow {
    ports = ["1-65535"]
  }

  # allow outbound tcp traffic on a port range
  allow {
    ports = ["1-65535"]
  }

  # allow outbound udp traffic on a port range
  allow {
    ports = ["1-65535"]
  }

  # allow outbound icmp traffic on a port range
  allow {
    ports = ["1-65535"]
  }
}

