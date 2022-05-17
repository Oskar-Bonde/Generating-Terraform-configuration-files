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
    action = "allow"
    priority = 100
    match_rules {
      cidr_list = ["0.0.0.0/0"]
    }
  }

  # allow outbound traffic
  rule {
    action = "allow"
    priority = 110
    match_rules {
      cidr_list = ["0.0.0.0/0"]
    }
  }

  # allow inbound traffic
  rule {
    action = "allow"
    priority = 120
    match_rules {
      cidr_list = ["0.0.0.0/0"]
    }
  }

  # allow outbound traffic
  rule {
    action = "allow"
    priority = 130
    match_rules {
      cidr_list = ["0.0.0.0/0"]
    }
  }
}

