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

  # DNS
  rule {
    action = "accept"
    ports = ["80", "443"]
  }

  # allow outbound traffic
  rule {
    action = "drop"
    ports = ["0-65535"]
  }

  # allow inbound traffic
  rule {
    action = "accept"
    ports = ["0-65535"]
  }

  # allow all outbound traffic
  rule {
    action = "accept"
    ports = ["0-65535"]
  }

  # allow all inbound traffic
  rule {
    action = "accept"
    ports = ["0-65535"]
  }

  # allow all outbound traffic
  rule {
    action = "accept"
    ports = ["0-65535"]
  }

  # allow all inbound traffic
  rule {
    action = "accept"
    ports = ["0-65535"]
  }

  # allow all outbound traffic
  rule {
    action = "accept"
    ports = ["0-65535"]
  }

  # allow all inbound traffic
  rule {
    action = "accept"
    ports = ["0-65535"]
  }

  # allow all outbound traffic
  rule {
    action = "accept"
    ports = ["0-65535"]
  }

  # allow all inbound traffic
  rule {
    action = "accept"
    ports = ["0-65535"]
  }

  # allow all outbound traffic
  rule {
    action = "accept"
    ports = ["0-65535"]
  }

  # allow all inbound traffic
  rule {
    action = "accept"
    ports = ["0-65535"]
  }

  # allow all outbound traffic
  rule {
    action = "accept"
    ports = ["0-65535"]
  }

  # allow all inbound traffic
  rule {
    action = "accept"
    ports = ["0-65535"]
  }

  # allow all outbound traffic
  rule {
    action = "accept"
    ports = ["0-65535"]
  }

  # allow all inbound traffic
  rule {
    action = "accept"
    ports = ["0-65535"]
  }

  # allow all outbound traffic
  rule {
    action = "accept"
    ports = ["0-65535"]
  }

  # allow all inbound traffic
  rule {
    action = "accept"
    ports = ["0-65535"]
  }

  # allow all outbound traffic
  rule {
    action = "accept"
    ports = ["0-65535"]
  }

  # allow all inbound traffic
  rule {
    action = "accept"
    ports = ["0-65535"]
  }

  # allow all outbound traffic
  rule {
    action = "accept"
    ports = ["0-65535"]
  }

  # allow all inbound traffic
  rule {
    action = "accept"
    ports = ["0-65535"]
  }

  # allow all outbound traffic
  rule {
    action = "accept"
    ports = ["0-65535"]
  }

  # allow all inbound traffic
  rule {
    action = "accept"
    ports = ["0-65535"]
  }

  # allow all inbound traffic
  rule {
    action = "accept"
    ports = ["0-65535"]
  }

  # allow all outbound traffic
  rule {
    action = "accept"
    ports = ["0-65535"]
  }

  # allow all inbound traffic
  rule {
    action = "accept"
    ports = ["0-65535"]
  }

  # allow all outbound traffic
  rule {
    action = "accept"
    ports = ["0-65535"]
  }

  # allow all inbound traffic
  rule {
    action = "accept"
    ports =
}

