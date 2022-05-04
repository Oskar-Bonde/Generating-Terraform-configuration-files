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

  # DNS zone to allow SSH access
  network_tier = "STANDARD"
  # DNS name to allow HTTP access
  # This is required for the "access_config" DNS zone
  access_config {
    # IPv4 access
    ]
  }

  # allow outbound traffic on all ports
  egress {
    protocol = "all"
  }

  # allow inbound traffic from a specific port
  ingress {
    protocol = "tcp"
    ports    = ["80"]
  }

  # allow inbound traffic from a specific port
  ingress {
    protocol = "udp"
    ports    = ["80"]
  }

  # allow inbound traffic from a specific port
  ingress {
    protocol = "icmp"
    ports    = ["1-65535"]
  }

  # allow all outbound traffic
  egress {
    protocol = "all"
  }
}
