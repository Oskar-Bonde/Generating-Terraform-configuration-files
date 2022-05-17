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

  # DNS Policy
  rule {
    action = "deny(403)"
    priority = 1
    match_rules {
      cidr_list = ["0.0.0.0/0"]
    }
  }
}

