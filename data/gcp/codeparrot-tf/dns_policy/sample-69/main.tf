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
  vpc = "default"

  # allow outbound tcp traffic on port 22
  ingress {
    # SSH
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # allow outbound udp traffic on port 80
  ingress {
    # SSH
    from_port = 80
    to_port = 80
    protocol = "udp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # allow all outbound traffic
  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

