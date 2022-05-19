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
resource "google_privateca_certificate_authority" "name_0" {
  provider = google-beta
  name     = "ca-pool"
  type     = "SUBORDINATE"
  tier     = "ENTERPRISE"
  config {
    key_spec = "RSA_2048"
    reuse_key = true
    is_ca = true
    max_chain_length = 1
    expiry = "8760h"
    publish_ca_cert = true
    publish_crl = true
  }
}

