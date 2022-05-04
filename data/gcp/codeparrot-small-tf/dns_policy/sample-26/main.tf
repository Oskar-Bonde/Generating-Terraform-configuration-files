terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with only region set to europe north1
provider "google" {
  region = "europe-north1"
}

# create dns policy, enable inbound forwarding and enable logging
resource "google_dns_policy" "name_0" {
  name = "my-dns-policy"
  description = "Terraform managed DNS policy"
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
        "dns-private5",
        "dns-private6",
        "dns-private7",
        "dns-private8",
        "dns-private9",
        "iam.googleapis.com",
        "iam.googleapis.com",
        "logging.googleapis.com",
        "monitoring.googleapis.com",
        "stackdriver.googleapis.com",
        "servicenetworking.googleapis.com",
        "sql-component.googleapis.com",
        "sqladmin.googleapis.com",
        "sqladmin.googleapis.com",
        "storage-api.googleapis.com",
        "storage-component.googleapis.com"
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
        "dns-private",
        "dns-private1",
        "dns-private2",
        "dns-private3",
        "dns-private4",
        "dns-private5",
        "dns-private6",
        "dns-private7",
        "dns-private8",
        "iam.googleapis.com",
        "iam.googleapis.com",
        "logging.googleapis.com",
        "stackdriver.googleapis.com",
        "servicenetworking.googleapis.com",
        "stackdriver.googleapis.com",
        "stackdriver.googleapis.com",
        "stackdriver.googleapis.com",
        "stackdriver.googleapis.com",
        "stackdriver.googleapis.com",
        "stackdriver.googleapis.com",
        "stackdriver.googleapis.com",
        "stackdriver.googleapis.com",
        "stackdriver.googleapis.com",
        "stackdriver.googleapis.com",
        "stackdriver.googleapis.com",
        "stackdriver.googleapis.com",
        "stackdriver.googleapis.com",
        "stackdriver.googleapis.com",
        "stackdriver.googleapis.com",
        "stackdriver.googleapis.com",
        "stackdriver.
}

