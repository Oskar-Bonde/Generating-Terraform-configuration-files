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
  type = "A"

  rules {
    # allow outbound tcp traffic on all ports
    # allow ssh from anywhere
    protocol = "tcp"
    ports = ["22"]
  }

  # allow inbound ssh traffic from the allowed subnets
  # allow outbound udp traffic from the allowed subnets
  # allow inbound icmp traffic from the allowed subnets
  # allow inbound http traffic from the allowed subnets
  # allow inbound https traffic from the allowed subnets
  # allow inbound icmp traffic from the allowed subnets
  # allow inbound icmp traffic from the allowed subnets
  # allow all outbound traffic
  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # allow all outbound traffic
  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # allow all inbound traffic
  ingress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    "Name" = "dns-policy"
  }
}
