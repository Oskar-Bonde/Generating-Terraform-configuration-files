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

  # DNS zone to allow SSH from
    policy = "accept"
  # SSH from anywhere
  ingress {
    protocol = "tcp"
    ports = ["22"]
  }

  # allow all outbound traffic
  egress {
    protocol = "all"
  }
}

