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
      max_issue_lifetime    = "P7D"
      expiry                = "P1Y"
      csr_only              = false
      crl_config {
        enabled = true
      }
      ca_certificate_config {
        signing_algorithm = "SHA256_RSA_PSS"
        lifetime          = "P1Y"
        is_ca             = true
        key_usage {
          key_usage = "CRL_SIGN"
        }
        key_usage {
          key_usage = "KEY_CERT_SIGN"
        }
        key_usage {
          key_usage = "DIGITAL_SIGNATURE"
        }
        key_usage {
          key_usage = "KEY_ENCIPHERMENT"
        }
      }
    }
  }
}

