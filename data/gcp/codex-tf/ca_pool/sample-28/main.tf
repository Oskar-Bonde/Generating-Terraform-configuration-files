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
  name = "ca_pool"
  type = "SUBORDINATE"
  tier = "ENTERPRISE"
  key_spec = "RSA_4096"
  is_enabled = true
  lifetime {
    type = "RELATIVE"
    value = "3650"
  }
  max_chain_length = 1
  ca_certificate_access_url = "https://example.com"
  crl_access_url = "https://example.com"
  gcs_bucket = "example-bucket"
  gcs_bucket_location = "europe-west4"
  gcs_ca_certificate_config {
    bucket = "example-bucket"
    enabled = true
    path = "path/to/ca_certificate"
  }
  gcs_crl_config {
    bucket = "example-bucket"
    enabled = true
    path = "path/to/crl"
  }
}

