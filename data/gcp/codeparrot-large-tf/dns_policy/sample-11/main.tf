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

  # allow all outbound traffic
  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  # allow outbound traffic from the internet
  allow {
    protocol = "tcp"
    ports    = ["1-65535"]
  }

  # allow all inbound traffic from the internet
  allow {
    protocol = "udp"
    ports    = ["1-65535"]
  }

  # allow all inbound traffic from the internet
  allow {
    protocol = "icmp"
  }

  # allow all outbound traffic to the internet
  allow {
    protocol = "tcp"
    ports    = ["1-65535"]
  }

  # allow all outbound traffic from the internet
  allow {
    protocol = "udp"
    ports    = ["1-65535"]
  }

  # allow all inbound traffic from the internet
  allow {
    protocol = "icmp"
  }

  # allow all outbound traffic to the internet
  allow {
    protocol = "tcp"
    ports    = ["1-65535"]
  }

  # allow all inbound traffic from the internet
  allow {
    protocol = "udp"
    ports    = ["1-65535"]
  }

  # allow all inbound traffic from the internet
  allow {
    protocol = "icmp"
  }

  # allow all outbound traffic to the internet
  allow {
    protocol = "tcp"
    ports    = ["1-65535"]
  }

  # allow all inbound traffic from the internet
  allow {
    protocol = "udp"
    ports    = ["1-65535"]
  }

  # allow all inbound traffic from the internet
  allow {
    protocol = "icmp"
  }

  # allow all outbound traffic to the internet
  allow {
    protocol = "tcp"
    ports    = ["1-65535"]
  }

  # allow all inbound traffic from the internet
  allow {
    protocol = "udp"
    ports    = ["1-65535"]
  }

  # allow all inbound traffic from the internet
  allow {
    protocol = "icmp"
  }

  # allow all inbound traffic from the internet
  allow {
    protocol = "tcp"
    ports    = ["1-65535"]
  }

  # allow all inbound traffic from the internet
  allow {
    protocol = "udp"
    ports    = ["1-65535"]
  }

  # allow all inbound traffic from the internet
  allow {
    protocol = "icmp"
  }

  # allow all inbound traffic from the internet
  allow {
    protocol = "tcp"
    ports    = ["1-65535"]
  }

  # allow all inbound traffic from the internet
  allow {
    protocol = "udp"
    ports    = ["1-65535"]
  }

  # allow all inbound traffic from the internet
  allow {
    protocol = "icmp"
  }

  # allow all inbound traffic from the internet
  allow {
    protocol = "tcp"
    ports    = ["1-65535"]
  }

  # allow all inbound traffic from the internet
  allow {
    protocol = "udp"
    ports    = ["1-65535"]
  }

  # allow all inbound traffic from the internet
  allow {
    protocol = "icmp"
  }

  # allow all inbound traffic from the internet
  allow {
    protocol = "tcp"
    ports    = ["1-65535"]
  }

  # allow all inbound traffic from the internet
  allow {
    protocol = "udp"
    ports    = ["1-65535"]
  }

  # allow all inbound traffic from the internet
  allow {
    protocol =
}

