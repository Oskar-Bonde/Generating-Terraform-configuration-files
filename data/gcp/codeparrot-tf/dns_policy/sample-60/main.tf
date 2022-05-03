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
  name = "dns-policy-${var.environment_code}-${var.colour}-${var.key_name}"
  zone = var.zone
  project = var.project_id
  type = "A"

  rules {
    # allow outbound traffic on all ports
    # allow SSH from anywhere
    protocol = "tcp"
    ports = ["22"]
  }

  # allow all outbound traffic
  # allow all outbound traffic from the internet
  # allow all outbound traffic from the internet
  # allow SSH from anywhere
  policy = var.inbound_rule_policy
  # allow all inbound traffic from the internet
  rule_action {
    action = "allow"
    description = "allow outbound traffic from the internet"
    direction = "INGRESS"
  }

  # allow all inbound traffic from the internet
  rule_action {
    action = "allow"
    description = "allow inbound traffic from the internet"
    direction = "EGRESS"
  }

  # allow all inbound traffic to the internet
  rule_action {
    action = "allow"
    description = "allow inbound traffic to the internet"
    direction = "INGRESS"
  }

  # allow all outbound traffic from the internet
  rule_action {
    action = "allow"
    description = "allow outbound traffic from the internet"
    direction = "EGRESS"
  }

  # allow all outbound traffic to the internet
  rule_action {
    action = "allow"
    description = "allow outbound traffic to the internet"
    direction = "INGRESS"
  }
}

