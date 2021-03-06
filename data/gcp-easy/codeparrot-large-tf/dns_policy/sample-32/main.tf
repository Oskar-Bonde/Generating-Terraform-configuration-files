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
  name = "my-dns-policy"
  zone = "us-central1-a"

  # DNS policy
  rule {
    action = "deny(403)"
    priority = 1
  }

  # allow outbound traffic
  rule {
    action = "allow"
    priority = 1
  }

  # allow inbound traffic
  rule {
    action = "allow"
    priority = 1
  }

  # allow all outbound traffic
  rule {
    action = "allow"
    priority = 1
  }
}

