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

# create dns policy, enable inbound forwarding and enable loggingresource
resource "google_dns_policy" "name_0" {
  name = "my-dns-policy"
  description = "policy for dns policy example"
  policy_data = <<EOF
{
  "version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "dns.forwarding"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:google.com/dns/dnspolicy/forward"
      ]
    },
    {
      "Action": [
        "dns.forwarding"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:google.com/dns/dnspolicy/reverse"
      ]
    },
    {
      "Action": [
        "dns.forwarding"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:google.com/dns/dnspolicy/forward"
      ]
    }
  ]
}

