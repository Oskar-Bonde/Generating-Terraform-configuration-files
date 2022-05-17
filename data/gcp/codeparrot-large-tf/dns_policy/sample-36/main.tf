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

  # DNS zone to allow SSH from
    policy = "accept"

  # allow outbound traffic on all ports
  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  # allow inbound traffic from a specific port
  allow {
    protocol = "tcp"
    ports    = ["80"]
  }

  # allow inbound traffic from a specific port
  allow {
    protocol = "udp"
    ports    = ["22"]
  }

  # allow all outbound traffic
  allow {
    protocol = "all"
  }
}

