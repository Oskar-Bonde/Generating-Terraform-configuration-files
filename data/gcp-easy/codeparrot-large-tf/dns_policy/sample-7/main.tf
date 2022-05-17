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
  description = "Terraform dns policy"
  policy = <<EOF
{
  "action": {
    "type": "SET_MANAGED_ZONE",
    "managed_zone": "${google_dns_managed_zone.env_dns_zone.name}"
  },
  "rules": [
    {
      description = "Terraform rule for dns policy example"
      action = {
        "type": "POST",
        "zone_name": "${google_dns_managed_zone.env_dns_zone.dns_name}"
      }
      condition = {
        age = 30
      }
    }
  ]
}

