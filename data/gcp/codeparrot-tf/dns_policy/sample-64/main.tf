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
  name = "dns-policy-${random_suffix}"
  zone = "europe-west1-b"

  # DNS zone
  policy = <<EOF
{
  "conditions": [
    "compute.googleapis.com",
    "compute.googleapis.com",
    "dns.googleapis.com.",
    "cloudresourcemanager.googleapis.com",
    "servicenetworking.googleapis.com",
    "serviceusage.googleapis.com",
    "iam.googleapis.com",
    "logging.googleapis.com",
    "monitoring.googleapis.com",
    "stackdriver.googleapis.com",
    "storage-api.googleapis.com",
    "storage-component.googleapis.com",
    "storage-api.googleapis.com",
    "vpcaccess.googleapis.com",
    "vpc.googleapis.com",
    "vpc.googleapis.com",
    "vpc.googleapis.com",
    "vpc.googleapis.com",
    "vpc.googleapis.com",
    "vpc.googleapis.com",
    "vpc.googleapis.com",
    "vpc.googleapis.com",
    "vpc.googleapis.com",
    "vpc.googleapis.com",
    "vpc.googleapis.com",
    "vpc.googleapis.com",
    "vpc.googleapis.com",
    "vpc.googleapis.com",
    "vpc.googleapis.com",
    "vpc.googleapis.com",
    "vpc.googleapis.com",
    "vpc.googleapis.com",
    "vpc.googleapis.com",
    "vpc.googleapis.com",
    "vpc.googleapis.com",
    "vpc.googleapis.com",
    "vpc.googleapis.com",
    "vpc.googleapis.com",
    "vpc.googleapis.com",
    "vpc.googleapis.com",
    "vpc.googleapis.com",
    "vpc.googleapis.com",
    "vpc.googleapis.com",
    "vpc.googleapis.com",
    "vpc.googleapis.com",
    "vpc.googleapis.com",
    "vpc.googleapis.com",
    "vpc.googleapis.com",
    "vpc.googleapis.com",
    "vpc.googleapis.com",
    "vpc.googleapis.com",
    "vpc.googleapis.com",
    "vpc.googleapis.com",
    "vpc.googleapis.com",
    "vpc.googleapis.com",
    "vpc.googleapis.com",
    "vpc.googleapis.com",
    "vpc.googleapis.com",
    "vpc.googleapis.com",
    "vpc.googleapis.com",
    "vpc.googleapis.com",
    "vpc.googleapis.com",
    "vpc.googleapis.com",
    "vpc.googleapis.com",
    "vpc.googleapis.com",
    "vpc.googleapis.com",
    "vpc.googleapis.com",
    "vpc.googleapis.com",
    "vpc.googleapis.com",
    "vpc.googleapis.com",
    "vpc.googleapis.com",
    "vpc.googleapis.com",
    "vpc.googleapis.com",
    "vpc.googleapis.com",
    "vpc.googleapis.com",
    "vpc.googleapis.com",
    "vpc.googleapis.com",
    "vpc.googleapis.com",
    "vpc.googleapis.com",
    "vpc.googleapis.com",
    "vpc.googleapis.com",
    "vpc.googleapis.com",
    "vpc.googleapis.com",
    "vpc.googleapis.com",
    "vpc.googleapis.com",
    "vpc.googleapis.com",
    "vpc.googleapis.
}
