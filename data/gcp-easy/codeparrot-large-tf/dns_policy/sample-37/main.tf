terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
provider "google" {
}

# create dns policy
resource "google_dns_policy" "name_0" {
  name = "dns-policy-${random_suffix}"
  zone = "us-central1-a"

  # DNS policy
  rule {
    action = "deny(403)"
  }

  # allow outbound tcp traffic on all ports
  rule {
    action = "allow"
    ports = ["1-65535"]
  }

  # allow outbound udp traffic on a port range
  rule {
    action = "allow"
    ports = ["1-65535"]
  }

  # allow outbound icmp traffic on a port range
  rule {
    action = "allow"
    ports = ["1-65535"]
  }

  # allow outbound udp traffic on a port range
  rule {
    action = "allow"
    ports = ["1-65535"]
  }

  # allow outbound icmp traffic on a port range
  rule {
    action = "allow"
    ports = ["1-65535"]
  }
}

