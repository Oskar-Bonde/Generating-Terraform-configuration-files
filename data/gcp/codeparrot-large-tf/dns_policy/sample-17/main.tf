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

  # DNS zone to allow SSH access
  zone = "europe-west1-b"

  # DNS name to allow HTTP access
  name_servers = ["AmazonProvidedDNS"]

  # allow outbound traffic
  allow {
    protocol = "tcp"
    ports    = ["80"]
  }

  # allow inbound traffic from all addresses
  allow {
    protocol = "tcp"
    ports    = ["80", "443"]
  }

  # allow all outbound traffic
  allow {
    protocol = "tcp"
    ports    = ["80", "443"]
  }
}

