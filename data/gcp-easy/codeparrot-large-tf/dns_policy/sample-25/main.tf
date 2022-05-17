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
  name        = "dns-policy-${local.name_suffix}"
  zone        = "us-central1-a"
  force_destroy = true

  rules {
    # allow outbound tcp traffic on all ports
    # allow ssh from anywhere
    protocol = "tcp"
    ports    = ["22"]
  }

  # allow inbound ssh traffic from a specific port
  rule {
    ip_protocol = "tcp"
    ports    = ["22"]
  }

  # allow inbound icmp traffic of a specific type
  rule {
    ip_protocol = "icmp"
    icmp_type = "code"
  }
}

