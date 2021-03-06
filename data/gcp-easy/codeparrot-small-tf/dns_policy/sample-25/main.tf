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
  description = "policy for Terraform DNS"
  dns_policy_data = <<EOF
{
  "version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "dns.reverse_dns",
        "dns.forward_dns"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:google.com/dns/dns-policy/default"
      ]
    }
  ]
}

