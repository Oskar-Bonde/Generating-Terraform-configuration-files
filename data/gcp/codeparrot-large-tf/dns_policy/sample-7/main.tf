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

  # DNS zone where to create the record
  rrdatas = ["${google_compute_instance.vm_instance.network_interface.0.access_config.0.assigned_nat_ip}"]

  # allow outbound tcp traffic on all ports
  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # allow inbound ssh traffic from a specific port
  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # allow inbound icmp traffic of a specific type
  ingress {
    from_port = -1
    to_port = -1
    protocol = "icmp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # allow inbound udp traffic of a specific type
  ingress {
    from_port = -1
    to_port = -1
    protocol = "udp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # allow inbound icmp traffic of a specific type
  ingress {
    from_port = -1
    to_port = -1
    protocol = "icmp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

