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
  description = "Terraform example policy"
  policy_data = <<EOF
{
  "version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "dns",
        "compute.googleapis.com"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:google.com/compute/global/images/family/debian-10"
      ]
    },
    {
      "Action": [
        "compute.googleapis.com"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:google.com/compute/global/images/family/debian-11"
      ]
    }
  ]
}

