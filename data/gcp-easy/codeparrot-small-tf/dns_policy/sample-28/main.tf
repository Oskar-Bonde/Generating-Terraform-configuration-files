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
  name = "my-dns-policy-${random_suffix}"
  description = "my-dns-policy-${random_suffix}"
  dns_policy_type = "A"
  priority = 1
}

