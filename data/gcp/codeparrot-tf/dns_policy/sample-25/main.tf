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

  # DNS
  rule {
    action = "accept"
    ports = ["80", "443"]
  }

  # allow outbound traffic
  rule {
    action = "deny"
    ports = ["0-65535"]
  }

  # allow inbound ssh
  rule {
    action = "accept"
    ports = ["22"]
  }

  # allow inbound http
  rule {
    action = "accept"
    ports = ["80"]
  }

  # allow inbound https
  rule {
    action = "accept"
    ports = ["443"]
  }

  # allow inbound outbound
  rule {
    action = "accept"
    ports = ["0-65535"]
  }

  # allow all outbound
  rule {
    action = "allow"
    ports = ["0-65535"]
  }
}
