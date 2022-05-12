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
  type = "A"

  # DNS Policy
  rule {
    action = "allow"
    priority = 1
    match_rules {
      cidr_list = ["0.0.0.0/0"]
      action = "allow"
    }
  }

  # allow outbound traffic
  rule {
    action = "allow"
    priority = 1
    match_rules {
      cidr_list = ["0.0.0.0/0"]
      action = "allow"
    }
  }

  # allow inbound traffic
  rule {
    action = "allow"
    priority = 1
    match_rules {
      cidr_list = ["0.0.0.0/0"]
      action = "allow"
    }
  }

  # allow outbound traffic
  rule {
    action = "allow"
    priority = 1
    match_rules {
      cidr_list = ["0.0.0.0/0"]
      action = "allow"
    }
  }
}

