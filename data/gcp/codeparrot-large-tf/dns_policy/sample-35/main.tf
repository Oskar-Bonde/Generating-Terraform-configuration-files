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
  name = "my-dns-policy"
  zone = "europe-west1-b"

  # DNS Policy
  rule {
    action = "accept"
    ports = ["80", "443"]
  }

  # allow all outbound traffic
  rule {
    action = "allow"
    ports = ["0-65535"]
  }

  # allow all inbound traffic
  rule {
    action = "allow"
    ports = ["0-65535"]
  }

  # allow all outbound traffic
  rule {
    action = "allow"
    ports = ["0-65535"]
  }

  # allow all inbound traffic
  rule {
    action = "allow"
    ports = ["0-65535"]
  }

  # allow all outbound traffic
  rule {
    action = "allow"
    ports = ["0-65535"]
  }

  # allow all inbound traffic
  rule {
    action = "allow"
    ports = ["0-65535"]
  }

  # allow all outbound traffic
  rule {
    action = "allow"
    ports = ["0-65535"]
  }

  # allow all inbound traffic
  rule {
    action = "allow"
    ports = ["0-65535"]
  }

  # allow all outbound traffic
  rule {
    action = "allow"
    ports = ["0-65535"]
  }

  # allow all inbound traffic
  rule {
    action = "allow"
    ports = ["0-65535"]
  }

  # allow all outbound traffic
  rule {
    action = "allow"
    ports = ["0-65535"]
  }

  # allow all inbound traffic
  rule {
    action = "allow"
    ports = ["0-65535"]
  }

  # allow all outbound traffic
  rule {
    action = "allow"
    ports = ["0-65535"]
  }

  # allow all inbound traffic
  rule {
    action = "allow"
    ports = ["0-65535"]
  }

  # allow all outbound traffic
  rule {
    action = "allow"
    ports = ["0-65535"]
  }

  # allow all inbound traffic
  rule {
    action = "allow"
    ports = ["0-65535"]
  }

  # allow all outbound traffic
  rule {
    action = "allow"
    ports = ["0-65535"]
  }

  # allow all inbound traffic
  rule {
    action = "allow"
    ports = ["0-65535"]
  }

  # allow all outbound traffic
  rule {
    action = "allow"
    ports = ["0-65535"]
  }

  # allow all inbound traffic
  rule {
    action = "allow"
    ports = ["0-65535"]
  }

  # allow all outbound traffic
  rule {
    action = "allow"
    ports = ["0-65535"]
  }

  # allow all inbound traffic
  rule {
    action = "allow"
    ports = ["0-65535"]
  }

  # allow all outbound traffic
  rule {
    action = "allow"
    ports = ["0-65535"]
  }

  # allow all inbound traffic
  rule {
    action = "allow"
    ports = ["0-65535"]
  }

  # allow all inbound traffic
  rule {
    action = "allow"
    ports = ["0-65535"]
  }

  # allow all outbound traffic
  rule {
    action = "allow"
    ports = ["0-65535"]
  }

  # allow all outbound traffic
  rule {
    action = "allow"
    ports = ["0-65535"]
  }

  # allow all inbound traffic
  rule {
    action = "allow"
}

