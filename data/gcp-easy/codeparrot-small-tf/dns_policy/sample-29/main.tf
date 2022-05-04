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
  description = "policy for dns policy"
  dns_policy_config {
    type = "A"
    ttl  = 300
    rrdatas = [
      "10.0.0.8",
      "172.16.0.4",
      "192.168.0.4",
    ]
  }
}

