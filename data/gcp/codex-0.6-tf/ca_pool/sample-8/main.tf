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
  name = "ca-pool"
  type = "SUBORDINATE"
  tier = "ENTERPRISE"
  key_spec = "RSA_4096"
  region = "europe-west4"
  config {
    subject_config {
      subject {
        common_name = "ca-pool"
      }
    }
    reuse_subject = false
    key_id = "kms-key"
    lifetime {
      days = 365
    }
    is_ca = true
    max_chain_length = 1
    issuing_options {
      include_ca_cert_url = true
      include_crl_access_url = true
    }
  }
}

