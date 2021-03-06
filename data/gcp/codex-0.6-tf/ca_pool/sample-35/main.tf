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
  name     = "ca_pool"
  type     = "SUBORDINATE"
  tier     = "ENTERPRISE"
  region   = "europe-west4"
  config {
    key_spec = "RSA_4096"
    is_ca    = true
    ca_options {
      is_ca                 = true
      max_issue_lifetime    = "P10Y"
      expiry                = "P10Y"
      csr_only              = false
      key_usage {
        key_usage = "DIGITAL_SIGNATURE"
      }
      key_usage {
        key_usage = "KEY_CERT_SIGN"
      }
      key_usage {
        key_usage = "CRL_SIGN"
      }
      key_usage {
        key_usage = "KEY_ENCIPHERMENT"
      }
      key_usage {
        key_usage = "DATA_ENCIPHERMENT"
      }
      key_usage {
        key_usage = "KEY_AGREEMENT"
      }
      key_usage {
        key_usage = "KEY_CERT_SIGN"
      }
      key_usage {
        key_usage = "CRL_SIGN"
      }
      key_usage {
        key_usage = "ENCIPHER_ONLY"
      }
      key_usage {
        key_usage = "DECIPHER_ONLY"
      }
      key_usage {
        key_usage = "SERVER_AUTH"
      }
      key_usage {
        key_usage = "CLIENT_AUTH"
      }
      key_usage {
        key_usage = "CODE_SIGNING"
      }
      key_usage {
        key_usage = "EMAIL_PROTECTION"
      }
      key_usage {
        key_usage = "TIME_STAMPING"
      }
      key_usage {
        key_usage = "OCSP_SIGNING"
      }
      key_usage {
        key_usage = "ANY"
      }
      key_usage {
        key_usage = "ANY"
      }
      key_usage {
        key_usage = "ANY"
      }
      key_usage {
        key_usage = "ANY"
      }
      key_usage {
        key_usage = "ANY"
      }
      key_usage {
        key_usage = "ANY"
      }
      key_usage {
        key_usage = "ANY"
      }
      key_usage {
        key_usage = "ANY"
      }
      key_usage {
        key_usage = "ANY"
      }
      key_usage {
        key_usage = "ANY"
      }
      key_usage {
        key_usage = "ANY"
      }
      key_usage {
        key_usage = "ANY"
      }
      key_usage {
        key_usage = "ANY"
      }
      key_usage {
        key_usage = "ANY"
      }
      key_usage {
        key_usage = "ANY"
      }
      key_usage {
        key_usage = "ANY"
      }
      key_usage {
        key_usage = "ANY"
      }
      key_usage {
        key_usage = "ANY"
      }
      key_usage {
        key_usage = "ANY"
      }
      key_usage {
        key_usage = "ANY"
      }
      key_usage {
        key_usage = "ANY"
      }
      key_usage {
        key_usage = "ANY"
      }
      key_usage {
        key_usage = "ANY"
      }
      key_usage {
        key_usage = "ANY"
      }
      key_usage {
        key_usage = "ANY"
      }
      key_usage {
        key_usage = "ANY"
      }
      key_usage {
        key_usage = "ANY"
      }
      key_usage {
        key_usage = "ANY"
      }
      key_usage {
        key_usage = "ANY
}

