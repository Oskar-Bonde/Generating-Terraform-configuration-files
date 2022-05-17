terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
provider "google" {
}

# create dns policy
resource "google_dns_policy" "name_0" {
  name = "dns-policy-${random_suffix}"
  zone = "us-central1-a"

  # DNS zone
  policy_definition {
    description = "DNS zone policy"
    policy_type = "PRIMARY"
  }

  # DNS records
  rule {
    action = "DROP"
    priority = 1
    match {
      expr {
        expression = "domain:google.com"
        title = "tf-www.${var.domain}"
      }
    }
    description = "tf-www.${var.domain}"
    zone_name = "tf-www"
  }

  # allow dns
  rule {
    action = "ALLOW"
    priority = 1
    match {
      expr {
        expression = "domain:google.com"
        title = "tf-www.${var.domain}"
      }
    }
    description = "tf-www.${var.domain}"
    zone_name = "tf-www"
  }

  # allow all outbound traffic
  rule {
    action = "ALLOW"
    priority = 100
    match {
      expr {
        expression = "method:response"
        title = "tf-www.${var.domain}"
      }
    }
    description = "Allow all outbound traffic"
    zone_name = "tf-www"
  }
}

