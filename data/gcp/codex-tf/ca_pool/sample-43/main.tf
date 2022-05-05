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
  region   = "europe-west4"
  config {
    key_spec = "RSA_2048"
    ca_options {
      is_ca                 = true
      max_issue_lifetime    = "P10Y"
      expiry                = "P10Y"
      csr_signing_algorithm = "SHA256_WITH_RSA"
    }
    signing_algorithm = "SHA256_WITH_RSA"
    subject_config {
      subject {
        common_name = "example.com"
      }
    }
    lifetime {
      lifetime {
        years = 1
      }
    }
    publish_ca_cert = true
    publish_crl     = true
  }
}

