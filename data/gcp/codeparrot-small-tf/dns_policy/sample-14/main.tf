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
  description = "policy for Terraform DNS"
  location = "europe-west1"
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
        "arn:google.com/dns/dns1",
        "arn:google.com/dns/dns2",
        "arn:google.com/dns/dns3",
        "arn:google.com/dns/dns4",
        "arn:google.com/dns/dns5",
        "arn:google.com/dns/dns6",
        "arn:google.com/dns/dns7",
        "arn:google.com/dns/dns8",
        "arn:google.com/dns/dns9",
        "dns-private",
        "dns-private1",
        "dns-private2",
        "dns-private3",
        "dns-private4",
        "dns-private5"
      ],
      "Resource": [
        "arn:google.com/dns/dns1",
        "arn:google.com/dns/dns2",
        "arn:google.com/dns/dns3",
        "arn:google.com/dns/dns4",
        "arn:google.com/dns/dns5",
        "arn:google.com/dns/dns6",
        "arn:google.com/dns/dns7",
        "arn:google.com/dns/dns8",
        "arn:google.com/dns/dns9",
        "arn:google.com/dns/dns9",
        "dns-private",
        "dns-private1",
        "dns-private2",
        "dns-private3",
        "dns-private4",
        "dns-private5"
      ],
      "Resource": [
        "arn:google.com/dns/dns1",
        "arn:google.com/dns/dns2",
        "arn:google.com/dns/dns3",
        "arn:google.com/dns/dns4",
        "arn:google.com/dns/dns5",
        "arn:google.com/dns/dns6",
        "arn:google.com/dns/dns7",
        "arn:google.com/dns/dns8",
        "arn:google.com/dns/dns9",
        "arn:google.com/dns/dns9",
        "dns-private",
        "dns-private1",
        "dns-private2",
        "dns-private3",
        "dns-private4",
        "dns-private5"
      ],
      "Condition": {
        "ForAllValues:StringEquals": {
          "all": [
            "projects/${var.project_id}/global/networks/default",
            "projects/${var.project_id}/regions/${var.region}/global/networks/default",
            "projects/${var.project_id}/regions/${var.region}/global/networks/default",
            "projects/${var.project_id}/regions/${var.region}/global/networks/default",
            "projects/${var.project_id}/regions/${var.region}/global/networks/default",
            "projects/${var.project_
}

