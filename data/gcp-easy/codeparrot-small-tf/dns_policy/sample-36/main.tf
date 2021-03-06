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
  description = "Terraform example DNS policy"
  policy_data = <<EOF
{
  "version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "dns.rrset",
        "dns.rrset_from"
      ],
      "Effect": "Allow",
      "Resource": [
        "my-dns-policy/dns-policy-1"
      ]
    }
  ]
}

