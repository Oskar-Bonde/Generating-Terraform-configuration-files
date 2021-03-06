# Terraform block with google provider
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

# create a CaPool resource. Located in europe west 4, enterprise tier and set publishing options ca cert and crl to true
resource "google_privateca_ca_pool" "name_0" {
  name = "my-pool"
  location = "europe-west4"
  tier = "ENTERPRISE"
  publishing_options {
    publish_ca_cert = true
    publish_crl = true
  }
}